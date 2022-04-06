#include <algorithm>
#include "Chat.h"
#include "Common.h"
#include "DatabaseEnv.h"
#include "Item.h"
#include "Player.h"
#include "WinzigItem.h"
#include "WinzigWorld.h"

struct Pity {
    int promotional;
    int epic;
    int featured;
    int rare;
};

const std::string SUBJECT = "Loot Box reward";
const std::string BODY = "Congratulations, you got a reward but your inventory was full."
    "Please take your reward when you free space from your inventory";

bool isBannerItem(float result)
{
    return result <= 0.5f;
}

bool isPromotion(float result)
{
    return !WinzigWorld::FiveStars.size() || (isBannerItem(result) && WinzigWorld::Promotions.size());
}

bool isEpic()
{
    return WinzigWorld::FiveStars.size();
}

bool isFeatured(float roll)
{
    return !WinzigWorld::FourStars.size() || (isBannerItem(roll) && WinzigWorld::Features.size());
}

bool isRare()
{
    return WinzigWorld::FourStars.size();
}

bool isCommon()
{
    return WinzigWorld::ThreeStars.size();
}

float WinzigItem::roll()
{
    return dis(gen);
}

int WinzigItem::randomId(std::vector<int> ids)
{
    std::uniform_int_distribution<> dis(0, ids.size() - 1);
    int i = dis(gen);
    return ids[i];
}

bool WinzigItem::sendRewardToPlayer(Player *player, uint32 itemId, enum Rarity rarity, enum Banner banner)
{
    ItemTemplate const *proto = sObjectMgr->GetItemTemplate(itemId);

    if (!proto) {
        LOG_ERROR("server", "[Loot Box] Item ID is invalid: %u", itemId);
        return false;
    }

    CharacterDatabaseTransaction trans = CharacterDatabase.BeginTransaction();

    uint32 count = proto->Stackable >= WinzigWorld::StackSize ? uint32(WinzigWorld::StackSize) : uint32(proto->Stackable);
    Item *item = Item::CreateItem(itemId, count);
    ItemPosCountVec dest;

    CharacterDatabase.Execute(
        "INSERT INTO `lootbox` (`player`, `item`, `rarity`, `banner`)"
        "VALUES ('{}', '{}', '{}', '{}')",
        player->GetGUID().GetCounter(), itemId, rarity, banner
    );
    item->SaveToDB(trans);

    InventoryResult msg = player->CanStoreItem(NULL_BAG, NULL_SLOT, dest, item, false);
    if (msg == EQUIP_ERR_OK) {
        player->StoreItem(dest, item, true);
        CharacterDatabase.CommitTransaction(trans);
        return true;
    }

    player->SendEquipError(msg, item);
    ChatHandler(player->GetSession()).PSendSysMessage("You will receive your reward in the mail.");
    MailSender sender(WinzigWorld::NPC);
    MailDraft draft(SUBJECT, BODY);
    draft.AddItem(item);
    draft.SendMailTo(trans, MailReceiver(player), sender);

    CharacterDatabase.CommitTransaction(trans);

    return true;
}

void WinzigItem::openLootBox(Player *player, Item *box, enum Rarity rarity)
{
    std::vector<int> pool;
    enum Banner banner;

    switch (rarity) {
        case RARITY_FIVE_STAR:
            if (isPromotion(roll())) {
                rarity = RARITY_FIVE_STAR;
                banner = BANNER_PROMOTIONAL;
                pool = WinzigWorld::Promotions;
                break;
            } else if (isEpic()) {
                rarity = RARITY_FIVE_STAR;
                banner = BANNER_NONE;
                pool = WinzigWorld::FiveStars;
                break;
            }
        case RARITY_FOUR_STAR:
            if (isFeatured(roll())) {
                rarity = RARITY_FOUR_STAR;
                banner = BANNER_FEATURED;
                pool = WinzigWorld::Features;
                break;
            } else if (isRare()) {
                rarity = RARITY_FOUR_STAR;
                banner = BANNER_NONE;
                pool = WinzigWorld::FourStars;
                break;
            }
        case RARITY_THREE_STAR:
            if (isCommon()) {
                rarity = RARITY_THREE_STAR;
                banner = BANNER_NONE;
                pool = WinzigWorld::ThreeStars;
                break;
            }
        default:
            rarity = RARITY_NONE;
            banner = BANNER_NONE;
            pool = std::vector<int>();
    }

    if (!pool.size()) {
        ChatHandler(player->GetSession()).PSendSysMessage("Failed to open loot box.");
        LOG_ERROR("server", "[Loot Box] No rewards configured.");
        return;
    }
 
    if (rarity == RARITY_FOUR_STAR) {
        player->CastSpell(player, 7931300);
    } else if (rarity == RARITY_FIVE_STAR) {
        player->CastSpell(player, 7931301);
    }

    int itemId = randomId(pool);
    bool sent = sendRewardToPlayer(player, itemId, rarity, banner);

    if (!sent) {
        ChatHandler(player->GetSession()).PSendSysMessage("Failed to open loot box.");
        return;
    }

    uint32 one = 1;
    uint32 &count = one;
    player->DestroyItemCount(box, count, true);
}

bool WinzigItem::OnUse(Player *player, Item *box, SpellCastTargets const &/*targets*/)
{
    if (!WinzigWorld::Enabled)
        return false;

    if ((uint32)WinzigWorld::Box != box->GetEntry())
        return false;

    QueryResult rows = CharacterDatabase.Query(
        "SELECT `rarity`, `banner` FROM `lootbox`"
        "WHERE `player` = '{}' ORDER BY `id` ASC",
        player->GetGUID().GetCounter()
    );

    struct Pity pity = { 0, 0, 0, 0 };
    if (rows) {
        do {
            Field *row = rows->Fetch();
            enum Rarity rarity = (enum Rarity)row[0].Get<int8>();
            enum Banner banner = (enum Banner)row[1].Get<int8>();

            switch (rarity) {
                case RARITY_FIVE_STAR:
                    if (banner == BANNER_PROMOTIONAL)
                        pity.promotional = 0;
                    else
                        pity.promotional++;
                    pity.epic = 0;
                    pity.rare = 0;
                    break;
                case RARITY_FOUR_STAR:
                    if (banner == BANNER_FEATURED)
                        pity.featured = 0;
                    else
                        pity.featured++;
                    pity.epic++;
                    pity.rare = 0;
                    break;
                default:
                    pity.epic++;
                    pity.rare++;
                    break;
            }
        } while (rows->NextRow());
    }

    float result = roll();
    if (result <= WinzigWorld::FiveStarRate) {
        openLootBox(player, box, RARITY_FIVE_STAR);
        return true;
    }

    float rare = (1 - WinzigWorld::FourStarRate) / WinzigWorld::FourStarGuarantee * std::min(pity.rare, WinzigWorld::FourStarGuarantee) + WinzigWorld::FourStarRate;
    if (result <= rare) {
        float epic = (1 - WinzigWorld::FiveStarRate) / WinzigWorld::FiveStarGuarantee * std::min(pity.epic, WinzigWorld::FiveStarGuarantee) + WinzigWorld::FiveStarRate;
        result = roll();

        if ((result <= epic) || (pity.epic > (WinzigWorld::FiveStarGuarantee - WinzigWorld::FourStarGuarantee))) {
            openLootBox(player, box, RARITY_FIVE_STAR);
            return true;
        }

        openLootBox(player, box, RARITY_FOUR_STAR);
        return true;
    }

    openLootBox(player, box, RARITY_THREE_STAR);
    return true;
}

void AddWinzigItemScripts()
{
    new WinzigItem();
}

#include <ctime>
#include <chrono>
#include "ScriptMgr.h"
#include "Player.h"
#include "Config.h"
#include "Chat.h"
#include "WinzigWorld.h"
#include "Group.h"

class WinzigPlayer : public PlayerScript
{
public:
    WinzigPlayer() : PlayerScript("WinzigPlayer") { }

    void OnLogin(Player *player) override
    {
        if (sConfigMgr->GetOption<bool>("Winzig.Enable", false))
            ChatHandler(player->GetSession()).SendSysMessage("This server is running the |cff4CFF00Winzig |rmodule.");

        uint32 guid = player->GetGUID().GetCounter();
        QueryResult result = CharacterDatabase.Query("SELECT `logout_time` FROM `characters` WHERE guid = '{}'", guid);
        std::chrono::system_clock::time_point logout_time_point(std::chrono::seconds(result->Fetch()->Get<uint32>()));
        time_t logout_time = std::chrono::system_clock::to_time_t(logout_time_point);
        time_t now = std::chrono::system_clock::to_time_t(std::chrono::system_clock::now());
        time_t reset = getReset();

        if (std::difftime(reset, logout_time) > 0 && std::difftime(now, reset) >= 0)
            sendDailyReward(player);
    }

    void OnLevelChanged(Player *player, uint8 /*oldlevel*/) override
    {
        uint32 amount = 0;
        uint8 level = player->getLevel();

        if (level <= 19)
            amount = 5;
        else if (level <= 29)
            amount = 15;
        else if (level <= 44)
            amount = 20;
        else if (level <= 54)
            amount = 25;
        else if (level <= 60)
            amount = 50;

        player->AddItem(WinzigWorld::CustomCurrency, amount);

        if (player->GetsRecruitAFriendBonus(true)) {
            if (Group* group = player->GetGroup()) {
                for (GroupReference* itr = group->GetFirstMember(); itr != nullptr; itr = itr->next()) {
                    Player* target = itr->GetSource();

                    if (!target)
                        continue;

                    if (target->GetSession()->GetAccountId() == player->GetSession()->GetRecruiterId())
                        target->AddItem(WinzigWorld::CustomCurrency, amount);
                }
            }
        }
    }

    void OnCreatureKill(Player *killer, Creature *killed) override
    {
        if (!killed)
            return;

        if (killed->GetCreatureTemplate()->type_flags & CREATURE_TYPE_FLAG_BOSS_MOB) {
            giveCurrency(killer, 50);
            return;
        }

        if (killed->IsDungeonBoss())
            giveCurrency(killer, 15);
    }

    void OnCreatureKilledByPet(Player* owner, Creature* killed) override
    {
        if (!killed)
            return;

        if (killed->GetCreatureTemplate()->type_flags & CREATURE_TYPE_FLAG_BOSS_MOB) {
            giveCurrency(owner, 50);
            return;
        }

        if (killed->IsDungeonBoss())
            giveCurrency(owner, 15);
    }

    void OnPlayerCompleteQuest(Player* player, Quest const* quest) override
    {
        switch (quest->GetQuestId()) {
        case 24881:
        case 24882:
        case 24883:
        case 24884:
        case 24885:
        case 24886:
        case 24888:
        case 24922:
        case 24790:
        case 24788:
            player->AddItem(WinzigWorld::CustomCurrency, 200);
            return;
        case 24889:
        case 24890:
        case 24891:
        case 24892:
        case 24893:
        case 24894:
        case 24896:
        case 24923:
        case 24791:
        case 24789:
            player->AddItem(WinzigWorld::CustomCurrency, 100);
            return;
        }
    }


private:
    void giveCurrency(Player *killer, uint32 amount)
    {
        Map *map = killer->GetMap();
        if (map->GetEntry()->IsDungeon()) {
            Map::PlayerList const &players = map->GetPlayers();

            if (!players.IsEmpty()) {
                for (Map::PlayerList::const_iterator iter = players.begin(); iter != players.end(); ++iter) {
                    if (Player *player = iter->GetSource()) {
                        player->AddItem(WinzigWorld::CustomCurrency, amount);
                    }
                }
            }
        }
    }

    void sendDailyReward(Player *player)
    {
        ChatHandler(player->GetSession()).PSendSysMessage("Daily login reward!");
        player->AddItem(WinzigWorld::CustomCurrency, WinzigWorld::DailyReward);
    }

    time_t getReset()
    {
        time_t now = std::chrono::system_clock::to_time_t(std::chrono::system_clock::now());
        tm local = *localtime(&now);
        local.tm_sec = 0;
        local.tm_min = 0;
        local.tm_hour = 0;
        time_t reset = mktime(&local);
        return reset;
    }
};

void AddWinzigPlayerScripts()
{
    new WinzigPlayer();
}

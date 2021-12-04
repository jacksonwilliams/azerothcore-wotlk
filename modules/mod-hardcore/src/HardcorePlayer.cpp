#include "Chat.h"
#include "Config.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "DataMap.h"
#include "Hardcore.h"

class HardcorePlayer : public PlayerScript
{
public:
    HardcorePlayer() : PlayerScript("HardcorePlayer") {}

    void OnLogin(Player* player) override
    {
        if (sConfigMgr->GetOption<bool>("Hardcore.Enable", false))
            ChatHandler(player->GetSession()).SendSysMessage("This server is running the |cff4CFF00Hardcore |rmodule.");
    }

    void OnFirstLogin(Player* player) override
    {
        if (sConfigMgr->GetOption<bool>("Hardcore.Enable", false))
            player->AddAura(SPELL_AURA_HARDCORE, player);
    }

    bool OnBeforeAchiComplete(Player* player, AchievementEntry const* achievement) override
    {
        Map* map = player->FindMap();

        if (!map)
            return true;

        if (map->IsDungeon())
        {
            HardcoreMapInfo* mapInfo = map->CustomData.GetDefault<HardcoreMapInfo>("HardcoreMapInfo");
            return achiComplete(player, mapInfo, achievement->ID);
        }

        return true;
    }

    bool OnBeforeCriteriaProgress(Player* player, AchievementCriteriaEntry const* criteria) override
    {
        Map* map = player->FindMap();

        if (!map)
            return true;

        if (map->IsDungeon())
        {
            HardcoreMapInfo* mapInfo = map->CustomData.GetDefault<HardcoreMapInfo>("HardcoreMapInfo");
            return achiComplete(player, mapInfo, criteria->referredAchievement);
        }

        return true;
    }

private:
    bool achiComplete(Player* player, HardcoreMapInfo* mapInfo, uint32 achiId)
    {
        switch(achiId)
        {
        case DEADMINES_ACHIEVEMENT:
        case RAGEFIRE_CHASM_ACHIEVEMENT:
        case WAILING_CAVERNS_ACHIEVEMENT:
        case SHADOWFANG_KEEP_ACHIEVEMENT:
        case BLACKFATHOM_DEEPS_ACHIEVEMENT:
        case STORMWIND_STOCKADES_ACHIEVEMENT:
        case GNOMEREGAN_ACHIEVEMENT:
        case RAZORFEN_KRAUL_ACHIEVEMENT:
        case RAZORFEN_DOWNS_ACHIEVEMENT:
        case SCARLET_MONASTERY_ACHIEVEMENT:
        case ULDAMAN_ACHIEVEMENT:
        case MARAUDON_ACHIEVEMENT:
            if (player->HasAura(SPELL_AURA_HARDCORE))
                return mapInfo->hardcore;
        default:
            return true;
        }
    }
};

void AddHardcorePlayerScripts()
{
    new HardcorePlayer();
}

#include "Config.h"
#include "Group.h"
#include "Hardcore.h"
#include "ScriptMgr.h"

class HardcoreAllMapScript : public AllMapScript
{
public:
    HardcoreAllMapScript() : AllMapScript("HardcoreAllMapScript") {}

    void OnPlayerEnterAll(Map* map, Player* player)
    {
        if (!sConfigMgr->GetOption<bool>("Hardcore.Enable", false))
            return;

        if (player->IsGameMaster())
            return;

        if (map->IsDungeon())
        {
            HardcoreMapInfo* mapInfo = map->CustomData.GetDefault<HardcoreMapInfo>("HardcoreMapInfo");

            if (!mapInfo->hardcore)
            {
                ChatHandler(player->GetSession()).SendSysMessage("Hardcore disabled.");
                return;
            }

            if (!player->HasAura(SPELL_AURA_HARDCORE))
            {
                disqualify(player, mapInfo);
                return;
            }

            uint32 mapId = map->GetId();

            if (mapId == RAGEFIRE_CHASM_MAP_ID && player->getLevel() > 21)
                disqualify(player, mapInfo);
            else if ((mapId == DEADMINES_MAP_ID || mapId == WAILING_CAVERNS_MAP_ID) && player->getLevel() > 25)
                disqualify(player, mapInfo);
            else if (mapId == SHADOWFANG_KEEP_MAP_ID && player->getLevel() > 26)
                disqualify(player, mapInfo);
            else if (mapId == BLACKFATHOM_DEEPS_MAP_ID && player->getLevel() > 29)
                disqualify(player, mapInfo);
            else if (mapId == STORMWIND_STOCKADES_MAP_ID && player->getLevel() > 30)
                disqualify(player, mapInfo);
            else if (mapId == RAZORFEN_KRAUL_MAP_ID && player->getLevel() > 32)
                disqualify(player, mapInfo);
            else if (mapId == GNOMEREGAN_MAP_ID && player->getLevel() > 33)
                disqualify(player, mapInfo);
            else if (mapId == RAZORFEN_DOWNS_MAP_ID && player->getLevel() > 42)
                disqualify(player, mapInfo);
            else if (mapId == SCARLET_MONASTERY_MAP_ID && player->getLevel() > 45)
                disqualify(player, mapInfo);
            else if (mapId == ULDAMAN_MAP_ID && player->getLevel() > 45)
                disqualify(player, mapInfo);
            else if (mapId == MARAUDON_MAP_ID && player->getLevel() > 53)
                disqualify(player, mapInfo);

            if (!mapInfo->hardcore)
                return;

            ChatHandler(player->GetSession()).SendSysMessage("Hardcore enabled.");
        }
    }

private:
    void disqualify(Player* player, HardcoreMapInfo* mapInfo)
    {
        if (!mapInfo->hardcore)
            return;

        mapInfo->hardcore = false;

        Group* group = player->GetGroup();

        if (group)
        {
            GroupReference const* member = group->GetFirstMember();

            while (member != NULL)
            {
                ChatHandler(member->GetSource()->GetSession()).SendSysMessage("Hardcore disabled.");
                member = member->next();
            }

            return;
        }

        ChatHandler(player->GetSession()).SendSysMessage("Hardcore disabled.");
    }
};

void AddHardcoreAllMapScripts()
{
    new HardcoreAllMapScript();
}

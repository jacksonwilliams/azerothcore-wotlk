#include "ScriptMgr.h"
#include "Player.h"
#include "Config.h"
#include "Chat.h"
#include "Formulas.h"

bool GainHonorBossEnable = 1;

class GainHonorBossMapInfo : public DataMap::Base
{
public:
    GainHonorBossMapInfo() {}
    std::map<uint32, float> honor;
    std::map<uint32, bool> rewarded;
    std::map<uint32, uint32> rdf;
};

class GainHonorBossConfig : public WorldScript
{
public:
    GainHonorBossConfig() : WorldScript("GainHonorBossConfig") {}

    void OnBeforeConfigLoad(bool /*reload*/) override
    {
        GainHonorBossEnable = sConfigMgr->GetOption<bool>("GainHonorBoss.Enable", 1);
    }
};

class GainHonorBossPlayer : public PlayerScript
{
public:
    GainHonorBossPlayer() : PlayerScript("GainHonorBossPlayer") {}

    void OnCreatureKill(Player* player, Creature *killed)
    {
        if (!GainHonorBossEnable)
            return;

        if (!killed)
            return;

        if (killed->GetCreatureTemplate()->type_flags & CREATURE_TYPE_FLAG_BOSS_MOB)
            return;

        if (killed->IsDungeonBoss())
            RewardHonor(player, killed);
    }

    void OnCreatureKilledByPet(Player *owner, Creature* killed)
    {
        if (!GainHonorBossEnable)
            return;

        if (!killed)
            return;

        if (killed->GetCreatureTemplate()->type_flags & CREATURE_TYPE_FLAG_BOSS_MOB)
            return;

        if (killed->IsDungeonBoss())
            RewardHonor(owner, killed);
    }

    void OnPlayerCompleteQuest(Player *player, Quest const* quest)
    {
        uint32 guid = player->GetGUID().GetCounter();
        Map* map = player->GetMap();
        GainHonorBossMapInfo* mapInfo = map->CustomData.GetDefault<GainHonorBossMapInfo>("GainHonorBossMapInfo");

        if (!GainHonorBossEnable)
            return;
        
        switch(quest->GetQuestId()) {
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
                mapInfo->rdf[guid] = 2;
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
                mapInfo->rdf[guid] = 1;
                return;
        }
    }

private:
    void RewardHonor(Player *killer, Creature *killed)
    {
        Map* map = killer->GetMap();

        if (map->IsDungeon() && !map->IsBattlegroundOrArena()) {
            Map::PlayerList const &players = map->GetPlayers();

            if (!players.IsEmpty()) {
                for (Map::PlayerList::const_iterator iter = players.begin(); iter != players.end(); ++iter) {
                    if (Player *player = iter->GetSource()) {
                        int honor = -1;
                        float honor_f = (float)honor;
                        player->UpdateHonorFields();
                        uint8 playerLevel = player->getLevel();
                        uint8 gray = Acore::XP::GetGrayLevel(playerLevel);
                        uint8 bossLevel = killed->getLevel();
                        GainHonorBossMapInfo* mapInfo = map->CustomData.GetDefault<GainHonorBossMapInfo>("GainHonorBossMapInfo");

                        if (bossLevel > gray) {
                            honor_f = ceil(Acore::Honor::hk_honor_at_level_f(playerLevel) * (bossLevel - gray) / (playerLevel - gray));
                            honor_f *= sWorld->getRate(RATE_HONOR);
                            honor = int32(honor_f);
                            player->ModifyHonorPoints(honor);
                            ChatHandler(player->GetSession()).PSendSysMessage("You have been awarded %i honor.", honor);
                            uint32 guid = player->GetGUID().GetCounter();
                            mapInfo->honor[guid] += honor;
                            RewardBonusHonor(player, mapInfo->honor[guid]);
                        }
                    }
                }
            }
        }
    }

    void RewardBonusHonor(Player* player, float honor_f)
    {
        uint32 guid = player->GetGUID().GetCounter();
        Map* map = player->GetMap();

        if (map->IsDungeon() && !map->IsBattlegroundOrArena()) {
            GainHonorBossMapInfo* mapInfo = map->CustomData.GetDefault<GainHonorBossMapInfo>("GainHonorBossMapInfo");

            if (mapInfo->rewarded[guid] || !mapInfo->rdf[guid])
                return;

            honor_f *= sWorld->getRate(RATE_HONOR);
            honor_f *= mapInfo->rdf[guid];
            player->UpdateHonorFields();
            int honor = int32(honor_f);
            player->ModifyHonorPoints(honor);
            ChatHandler(player->GetSession()).PSendSysMessage("You have been awarded %i bonus honor.", honor);
            mapInfo->rewarded[guid] = true;
        }
    }
};

void AddGainHonorBossScripts()
{
    new GainHonorBossConfig();
    new GainHonorBossPlayer();
}

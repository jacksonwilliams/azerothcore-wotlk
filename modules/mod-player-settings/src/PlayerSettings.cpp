#include "Chat.h"
#include "Config.h"
#include "Language.h"
#include "MapMgr.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptMgrMacros.h"
#include "Unit.h"
#include "Formulas.h"
#include <algorithm>
#include <cstdlib>
#include <vector>

// DPS count as 1 offensive unit and tanks count as 0.5 offensive units.
// Healers count as 1 defensive unit and tanks count as 0.5 defensive units.

// 5 man: 1 tank, 3 dps, 1 healer = 3.5 offensive units and 1.5 defensive units.
const float Offence5M = 1 / 3.5f, Defence5M = 1 / 1.5f;

// 10 man: 2 tank, 6 dps, 2 healer = 7.0 offensive units and 3.0 defensive units.
const float Offence10M = 1 / 7.0f, Defence10M = 1 / 3.0f;

// 20 man: 2 tank, 14 dps, 4 healer = 14.5 offensive units and 6.5 defensive units
const float Offence20M = 1 / 15.0f, Defence20M = 1 / 5.0f;

// 25 man: 3 tank, 17 dps, 5 healer = 18.5 offensive units and 6.5 defensive units.
const float Offence25M = 1 / 18.5f, Defence25M = 1 / 6.5f;

// 40 man: 4 tank, 28 dps, 8 healer = 30.0 offensive units and 10.0 defensive units.
const float Offence40M = 1 / 30.0f, Defence40M = 1 / 10.0f;

class PlayerSettingsCreatureInfo : public DataMap::Base
{
public:
    PlayerSettingsCreatureInfo() {}
    PlayerSettingsCreatureInfo(uint32 count, float dmg, float hpRate) : nplayers(count), DamageMultiplier(dmg), HealthMultiplier(hpRate) {}
    uint32 nplayers = 0;
    // This is used to detect creatures that update their entry.
    uint32 entry = 0;
    float DamageMultiplier = 1;
    float HealthMultiplier = 1;
};

class PlayerSettingsMapInfo : public DataMap::Base
{
public:
    PlayerSettingsMapInfo() {}
    PlayerSettingsMapInfo(uint32 count) : nplayers(count), veto(count) {}
    uint32 nplayers = 0;
    uint32 veto = 0;
    std::map<uint32, float> honor;
    std::map<uint32, bool> rewarded;
    std::map<uint32, uint32> rdf;
};

static bool enabled;
static float experienceMultiplier, goldMultiplier;

class PlayerSettingsWorldScript : public WorldScript
{
public:
    PlayerSettingsWorldScript() : WorldScript("PlayerSettingsWorldScript") {}

    void OnBeforeConfigLoad(bool /*reload*/) override
    {
        SetInitialWorldSettings();
    }

    void SetInitialWorldSettings()
    {
        enabled = sConfigMgr->GetOption<bool>("PlayerSettings.Enable", 1);
        experienceMultiplier = sConfigMgr->GetOption<float>("PlayerSettings.Experience", 0.1);
        goldMultiplier = sConfigMgr->GetOption<float>("PlayerSettings.Gold", 0.1);
    }
};

class PlayerSettingsPlayerScript : public PlayerScript
{
public:
    PlayerSettingsPlayerScript() : PlayerScript("PlayerSettingsPlayer") {}

    void OnLogin(Player *player) override
    {
        if (enabled)
            ChatHandler(player->GetSession()).SendSysMessage("This server is running the |cff4CFF00Player Settings |rmodule.");
    }

    void OnGiveXP(Player *player, uint32 &amount, Unit *victim) override
    {
        if (victim)
        {
            Map *map = player->GetMap();

            if (map->IsDungeon() && !map->IsBattlegroundOrArena())
            {
                uint32 maxPlayers = ((InstanceMap *)sMapMgr->FindMap(map->GetId(), map->GetInstanceId()))->GetMaxPlayers();
                PlayerSettingsMapInfo *mapInfo = map->CustomData.GetDefault<PlayerSettingsMapInfo>("PlayerSettingsMapInfo");
                uint32 nplayers = std::max(mapInfo->nplayers, mapInfo->veto);

                amount = amount * 2 * nplayers / maxPlayers * (1 + experienceMultiplier * (nplayers - 1));
            }
        }
    }

    void OnMoneyChanged(Player *player, int32 &amount) override
    {
        Map *map = player->GetMap();

        if (map->IsDungeon() && amount > 0)
        {
            uint32 maxPlayers = ((InstanceMap *)sMapMgr->FindMap(map->GetId(), map->GetInstanceId()))->GetMaxPlayers();
            PlayerSettingsMapInfo *mapInfo = map->CustomData.GetDefault<PlayerSettingsMapInfo>("PlayerSettingsMapInfo");
            uint32 nplayers = std::max(mapInfo->nplayers, mapInfo->veto);

            amount = amount * nplayers / maxPlayers * (1 + goldMultiplier * (nplayers - 1));
        }
    }

    void OnCreatureKill(Player *player, Creature *killed) override
    {
        if (!killed)
            return;

        if (killed->GetCreatureTemplate()->type_flags & CREATURE_TYPE_FLAG_BOSS_MOB)
            return;

        if (killed->IsDungeonBoss())
            RewardHonor(player, killed);
    }

    void OnCreatureKilledByPet(Player *owner, Creature *killed) override
    {
        if (!killed)
            return;

        if (killed->GetCreatureTemplate()->type_flags & CREATURE_TYPE_FLAG_BOSS_MOB)
            return;

        if (killed->IsDungeonBoss())
            RewardHonor(owner, killed);
    }

    void OnPlayerCompleteQuest(Player *player, Quest const *quest) override
    {
        uint32 guid = player->GetGUID().GetCounter();
        Map *map = player->GetMap();
        PlayerSettingsMapInfo *mapInfo = map->CustomData.GetDefault<PlayerSettingsMapInfo>("PlayerSettingsMapInfo");

        switch (quest->GetQuestId())
        {
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
        Map *map = killer->GetMap();

        if (map->IsDungeon() && !map->IsBattlegroundOrArena())
        {
            Map::PlayerList const &players = map->GetPlayers();

            if (!players.IsEmpty())
            {
                for (Map::PlayerList::const_iterator iter = players.begin(); iter != players.end(); ++iter)
                {
                    if (Player *player = iter->GetSource())
                    {
                        int honor = -1;
                        float honor_f = (float)honor;
                        player->UpdateHonorFields();
                        uint8 playerLevel = player->getLevel();
                        uint8 gray = Acore::XP::GetGrayLevel(playerLevel);
                        uint8 bossLevel = killed->getLevel();
                        PlayerSettingsMapInfo *mapInfo = map->CustomData.GetDefault<PlayerSettingsMapInfo>("PlayerSettingsMapInfo");
                        uint32 nplayers = std::max(mapInfo->nplayers, mapInfo->veto);
                        uint32 bonusLevels = 0;

                        if (nplayers > 2)
                            bonusLevels = nplayers - 2;

                        if (bossLevel > gray)
                        {
                            honor_f = ceil(Acore::Honor::hk_honor_at_level_f(playerLevel) * (bossLevel + bonusLevels - gray) / (playerLevel - gray));
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

    void RewardBonusHonor(Player *player, float honor_f)
    {
        uint32 guid = player->GetGUID().GetCounter();
        Map *map = player->GetMap();

        if (map->IsDungeon() && !map->IsBattlegroundOrArena())
        {
            PlayerSettingsMapInfo *mapInfo = map->CustomData.GetDefault<PlayerSettingsMapInfo>("PlayerSettingsMapInfo");

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

class PlayerSettingsUnitScript : public UnitScript
{
public:
    PlayerSettingsUnitScript() : UnitScript("PlayerSettingsUnitScript", true) {}

    void ModifyPeriodicDamageAurasTick(Unit *target, Unit *attacker, uint32 &damage) override
    {
        damage = modify(target, attacker, damage);
    }

    void ModifySpellDamageTaken(Unit *target, Unit *attacker, int32 &damage) override
    {
        damage = modify(target, attacker, damage);
    }

    void ModifyMeleeDamage(Unit *target, Unit *attacker, uint32 &damage) override
    {
        damage = modify(target, attacker, damage);
    }

    void ModifyHealRecieved(Unit *target, Unit *attacker, uint32 &damage) override
    {
        damage = modify(target, attacker, damage);
    }

private:
    bool inDungeon(Unit *target, Unit *attacker)
    {
        return target->GetMap()->IsDungeon() && attacker->GetMap()->IsDungeon();
    }

    bool inBattleground(Unit *target, Unit *attacker)
    {
        return target->GetMap()->IsBattleground() && attacker->GetMap()->IsBattleground();
    }

    uint32 modify(Unit *target, Unit *attacker, uint32 damage)
    {
        if (!enabled)
            return damage;

        if (!attacker || attacker->GetTypeId() == TYPEID_PLAYER || !attacker->IsInWorld())
            return damage;

        if (!inDungeon(target, attacker) || inBattleground(target, attacker))
            return damage;

        if ((attacker->IsHunterPet() || attacker->IsPet() || attacker->IsSummon()) && attacker->IsControlledByPlayer())
            return damage;

        float damageMultiplier = attacker->CustomData.GetDefault<PlayerSettingsCreatureInfo>("PlayerSettingsCreatureInfo")->DamageMultiplier;

        return damage * damageMultiplier;
    }
};

class PlayerSettingsAllMapScript : public AllMapScript
{
public:
    PlayerSettingsAllMapScript() : AllMapScript("PlayerSettingsAllMapScript") {}

    void OnPlayerEnterAll(Map *map, Player *player)
    {
        if (!enabled)
            return;

        if (player->IsGameMaster())
            return;

        PlayerSettingsMapInfo *mapInfo = map->CustomData.GetDefault<PlayerSettingsMapInfo>("PlayerSettingsMapInfo");
        mapInfo->nplayers = map->GetPlayersCountExceptGMs();

        if (mapInfo->veto == 0)
            mapInfo->veto = mapInfo->nplayers;

        if (map->GetEntry()->IsDungeon() && player)
        {
            Map::PlayerList const &playerList = map->GetPlayers();

            if (!playerList.IsEmpty() && mapInfo->nplayers > 1)
            {
                for (Map::PlayerList::const_iterator iter = playerList.begin(); iter != playerList.end(); ++iter)
                {
                    if (Player *handle = iter->GetSource())
                        ChatHandler(handle->GetSession()).PSendSysMessage("%s has entered the instance. The minions of hell grow stronger.", player->GetName().c_str());
                }
            }
        }
    }

    void OnPlayerLeaveAll(Map *map, Player *player)
    {
        if (!enabled)
            return;

        if (player->IsGameMaster())
            return;

        PlayerSettingsMapInfo *mapInfo = map->CustomData.GetDefault<PlayerSettingsMapInfo>("PlayerSettingsMapInfo");

        if (map->GetEntry() && map->GetEntry()->IsDungeon())
        {
            bool PlayerSettingsCheck = false;
            Map::PlayerList const &playerList = map->GetPlayers();

            for (Map::PlayerList::const_iterator iter = playerList.begin(); iter != playerList.end(); ++iter)
            {
                if (Player *player = iter->GetSource())
                {
                    if (player->IsInCombat())
                        PlayerSettingsCheck = true;
                }
            }

            if (!PlayerSettingsCheck)
                mapInfo->nplayers = map->GetPlayersCountExceptGMs() - 1;
        }

        if (map->GetEntry()->IsDungeon())
        {
            Map::PlayerList const &players = map->GetPlayers();

            if (!players.IsEmpty() && mapInfo->nplayers > 0)
            {
                for (Map::PlayerList::const_iterator iter = players.begin(); iter != players.end(); ++iter)
                {
                    if (Player *playerHandle = iter->GetSource())
                        ChatHandler(playerHandle->GetSession()).PSendSysMessage("%s has left the instance. The minions of hell grow weaker.", player->GetName().c_str());
                }
            }
        }
    }
};

class PlayerSettingsAllCreatureScript : public AllCreatureScript
{
public:
    PlayerSettingsAllCreatureScript() : AllCreatureScript("PlayerSettingsAllCreatureScript") {}

    void OnAllCreatureUpdate(Creature *creature, uint32 /*diff*/) override
    {
        if (!enabled)
            return;

        ModifyCreatureAttributes(creature);
    }

    void ModifyCreatureAttributes(Creature *creature)
    {
        if (!creature || !creature->GetMap())
            return;

        if (!creature->GetMap()->IsDungeon())
            return;

        if (((creature->IsHunterPet() || creature->IsPet() || creature->IsSummon()) && creature->IsControlledByPlayer()))
            return;

        PlayerSettingsMapInfo *mapInfo = creature->GetMap()->CustomData.GetDefault<PlayerSettingsMapInfo>("PlayerSettingsMapInfo");
        CreatureTemplate const *creatureTemplate = creature->GetCreatureTemplate();
        InstanceMap *instanceMap = ((InstanceMap *)sMapMgr->FindMap(creature->GetMapId(), creature->GetInstanceId()));
        PlayerSettingsCreatureInfo *creatureInfo = creature->CustomData.GetDefault<PlayerSettingsCreatureInfo>("PlayerSettingsCreatureInfo");

        if (!creature->IsAlive())
            return;

        creatureInfo->nplayers = std::max(mapInfo->nplayers, mapInfo->veto);

        if (!creatureInfo->nplayers)
            return;

        creatureInfo->entry = creature->GetEntry();

        CreatureBaseStats const *stats = sObjectMgr->GetCreatureBaseStats(creature->getLevel(), creatureTemplate->unit_class);
        uint32 baseHealth = stats->GenerateHealth(creatureTemplate);
        uint32 scaledHealth = 0;
        uint32 nplayers = creatureInfo->nplayers;
        uint32 maxPlayers = instanceMap->GetMaxPlayers();

        float offence = 1.0f;
        float defence = 1.0f;
        if (instanceMap->IsRaid())
        {
            switch (instanceMap->GetMaxPlayers())
            {
            case 10:
                offence = Offence10M;
                defence = Defence10M;
                break;
            case 20:
                offence = Offence20M;
                defence = Defence20M;
            case 25:
                offence = Offence25M;
                defence = Defence25M;
                break;
            default:
                offence = Offence40M;
                defence = Defence40M;
                break;
            }
        }
        else
        {
            offence = Offence5M;
            defence = Defence5M;
        }

        creatureInfo->HealthMultiplier = offence + (1 - offence) / (maxPlayers - 1) * (nplayers - 1);
        creatureInfo->DamageMultiplier = defence + (1 - defence) / (maxPlayers - 1) * (nplayers - 1);

        scaledHealth = round(((float)baseHealth * creatureInfo->HealthMultiplier) + 1.0f);

        uint32 previousHealth = creature->GetHealth();
        uint32 previousMaxHealth = creature->GetMaxHealth();

        creature->SetCreateHealth(scaledHealth);
        creature->SetMaxHealth(scaledHealth);
        creature->ResetPlayerDamageReq();
        creature->SetModifierValue(UNIT_MOD_HEALTH, BASE_VALUE, (float)scaledHealth);

        uint32 scaledCurrentHealth = previousHealth && previousMaxHealth ? float(scaledHealth) / float(previousMaxHealth) * float(previousHealth) : 0;

        creature->SetHealth(scaledCurrentHealth);
        creature->UpdateAllStats();
    }
};

class PlayerSettingsCommandScript : public CommandScript
{
public:
    PlayerSettingsCommandScript() : CommandScript("PlayerSettingsCommandScript") {}

    Acore::ChatCommands::ChatCommandTable GetCommands() const
    {
        static Acore::ChatCommands::ChatCommandTable commands =
            {
                {"players", HandlePlayersCommand, SEC_PLAYER, Acore::ChatCommands::Console::No},
                {"playersettings", HandlePlayerSettingsCommand, SEC_GAMEMASTER, Acore::ChatCommands::Console::No}};

        return commands;
    }

    static bool HandlePlayersCommand(ChatHandler *handler, std::string args)
    {
        char *x = strtok((char *)args.c_str(), " ");
        Player *player = handler->getSelectedPlayerOrSelf();
        Map *map = player->GetMap();
        PlayerSettingsMapInfo *mapInfo = map->CustomData.GetDefault<PlayerSettingsMapInfo>("PlayerSettingsMapInfo");
        uint32 maxPlayers = ((InstanceMap *)sMapMgr->FindMap(map->GetId(), map->GetInstanceId()))->GetMaxPlayers();

        if (!map->IsDungeon())
        {
            handler->SendSysMessage("Only usable in dungeons.");
            return true;
        }

        Map::PlayerList const &players = map->GetPlayers();
        if (!players.IsEmpty())
        {
            for (Map::PlayerList::const_iterator iter = players.begin(); iter != players.end(); ++iter)
            {
                if (Player *player = iter->GetSource())
                {
                    if (player->IsInCombat())
                    {
                        handler->SendSysMessage("Only usable outside of combat.");
                        return true;
                    }
                }
            }
        }

        if (x)
        {
            long int n = strtol(x, nullptr, 10);

            if (n < 1)
                n = 1;
            else if (n > maxPlayers)
                n = maxPlayers;

            mapInfo->veto = (uint32)n;
        }

        handler->PSendSysMessage("Players set to %i.", std::max(mapInfo->nplayers, mapInfo->veto));

        return true;
    }

    static bool HandlePlayerSettingsCommand(ChatHandler *handler)
    {

        Player *player = handler->getSelectedPlayerOrSelf();
        Map *map = player->GetMap();
        PlayerSettingsMapInfo *mapInfo = map->CustomData.GetDefault<PlayerSettingsMapInfo>("PlayerSettingsMapInfo");
        uint32 nplayers = std::max(mapInfo->nplayers, mapInfo->veto);

        if (!map->IsDungeon())
            return false;

        handler->PSendSysMessage("Experience multiplier set to %.2f.", !nplayers ? 0 : (1 + experienceMultiplier * (nplayers - 1)));
        handler->PSendSysMessage("Gold multiplier set to %.2f.", !nplayers ? 0 : (1 + goldMultiplier * (nplayers - 1)));

        Creature *target = handler->getSelectedCreature();
        if (target)
        {
            PlayerSettingsCreatureInfo *creatureInfo = target->CustomData.GetDefault<PlayerSettingsCreatureInfo>("PlayerSettingsCreatureInfo");

            handler->PSendSysMessage("Health multiplier set to %.2f.", creatureInfo->HealthMultiplier);
            handler->PSendSysMessage("Damage multiplier set to %.2f.", creatureInfo->DamageMultiplier);
        }

        return true;
    }
};

void AddPlayerSettingsScripts()
{
    new PlayerSettingsWorldScript();
    new PlayerSettingsPlayerScript();
    new PlayerSettingsUnitScript();
    new PlayerSettingsAllMapScript();
    new PlayerSettingsAllCreatureScript();
    new PlayerSettingsCommandScript();
}

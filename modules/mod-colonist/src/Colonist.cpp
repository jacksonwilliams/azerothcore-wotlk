#include "ScriptMgr.h"
#include "Player.h"
#include "Config.h"
#include "Chat.h"
#include "AchievementMgr.h"
#include "DBUpdater.h"

class ColonistPlayer : public PlayerScript
{
public:
    ColonistPlayer() : PlayerScript("ColonistPlayer") { }

    void OnLogin(Player* player) override
    {
        if (sConfigMgr->GetOption<int>("MaxPlayerLevel", false) <= 19)
        {
            player->CompletedAchievement(sAchievementStore.LookupEntry(23464));

            if (isPioneer(player))
                player->CompletedAchievement(sAchievementStore.LookupEntry(23465));
        }
    }

    bool OnBeforeAchiComplete(Player */*player*/, AchievementEntry const *achievement) override
    {
        if (sConfigMgr->GetOption<int>("MaxPlayerLevel", false) > 19
            && (achievement->ID == 23464 || achievement->ID == 23465))
        {
            return false;
        }

        return true;
    }

    void OnAchiComplete(Player* player, AchievementEntry const* /*achievement*/) override
    {
        if (sConfigMgr->GetOption<int>("MaxPlayerLevel", 80) <= 19 && isPioneer(player))
            player->CompletedAchievement(sAchievementStore.LookupEntry(23465));
    }

private:
    bool isPioneer(Player *player)
    {
        return player->HasAchieved(504) && player->HasAchieved(628) && player->HasAchieved(629)
            && player->HasAchieved(630) && player->HasAchieved(631) && player->HasAchieved(632);
    }
};

class ColonistDatabase : public DatabaseScript
{
public:
    ColonistDatabase() : DatabaseScript("ColonistDatabase") {}

    std::string path = "/modules/mod-colonist/sql/";
    void OnAfterDatabasesLoaded(uint32 updateFlags) override
    {
        if (DBUpdater<LoginDatabaseConnection>::IsEnabled(updateFlags))
        {
            std::vector<std::string> directories;
            directories.push_back(path + "auth");
            DBUpdater<LoginDatabaseConnection>::Update(LoginDatabase, &directories);
        }

        if (DBUpdater<CharacterDatabaseConnection>::IsEnabled(updateFlags))
        {
            std::vector<std::string> directories;
            directories.push_back(path + "characters");
            DBUpdater<CharacterDatabaseConnection>::Update(CharacterDatabase, &directories);
        }

        if (DBUpdater<WorldDatabaseConnection>::IsEnabled(updateFlags))
        {
            std::vector<std::string> directories;
            directories.push_back(path + "world");
            DBUpdater<WorldDatabaseConnection>::Update(WorldDatabase, &directories);
        }
    }
};

void AddColonistScripts()
{
    new ColonistPlayer();
    new ColonistDatabase();
}

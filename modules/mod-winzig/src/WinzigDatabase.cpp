#include "ScriptMgr.h"
#include "DBUpdater.h"

class WinzigDatabase : public DatabaseScript
{
public:
    WinzigDatabase() : DatabaseScript("WinzigDatabase") {}

    std::string path = "/modules/mod-winzig/sql/";
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

void AddWinzigDatabaseScripts()
{
    new WinzigDatabase();
}

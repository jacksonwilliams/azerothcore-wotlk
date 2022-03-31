#include "ScriptMgr.h"
#include "Player.h"
#include "Chat.h"
#include "World.h"
#include "LootBoxWorld.h"

class LootBoxCommand : public CommandScript
{
public:
    LootBoxCommand() : CommandScript("LootBoxCommand") {}

    Acore::ChatCommands::ChatCommandTable GetCommands() const override
    {
        static Acore::ChatCommands::ChatCommandTable rewards =
        {
            {"macaroons", HandleDailyMacaroons, SEC_CONSOLE, Acore::ChatCommands::Console::Yes} 
        };

        static Acore::ChatCommands::ChatCommandTable commands =
        {
            {"daily", rewards}
        };

        return commands;
    }

    static bool HandleDailyMacaroons(ChatHandler */*handler*/)
    {
        SessionMap const &sessions = sWorld->GetAllSessions();

        for (SessionMap::const_iterator itr = sessions.begin(); itr != sessions.end(); ++itr) {
            if (!itr->second || !itr->second->GetPlayer() || !itr->second->GetPlayer()->IsInWorld())
                continue;

            Player *player = itr->second->GetPlayer();

            ChatHandler(player->GetSession()).PSendSysMessage("Daily login reward!");
            player->AddItem(LootBoxWorld::CustomCurrency, LootBoxWorld::DailyReward);
        }

        return true;
    }
};

void AddLootBoxCommandScripts()
{
    new LootBoxCommand();
}

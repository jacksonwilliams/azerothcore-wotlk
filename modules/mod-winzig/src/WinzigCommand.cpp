#include "ScriptMgr.h"
#include "Player.h"
#include "Chat.h"
#include "World.h"
#include "WinzigWorld.h"

class WinzigCommand : public CommandScript
{
public:
    WinzigCommand() : CommandScript("WinzigCommand") {}

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
            player->AddItem(WinzigWorld::CustomCurrency, WinzigWorld::DailyReward);
        }

        return true;
    }
};

void AddWinzigCommandScripts()
{
    new WinzigCommand();
}

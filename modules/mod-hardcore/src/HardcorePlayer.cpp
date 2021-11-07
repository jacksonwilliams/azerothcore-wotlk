#include "ScriptMgr.h"
#include "Player.h"
#include "Config.h"
#include "Chat.h"

class HardcorePlayer : public PlayerScript
{
public:
    HardcorePlayer() : PlayerScript("HardcorePlayer") { }

    void OnLogin(Player* player) override
    {
        if (sConfigMgr->GetOption<bool>("Hardcore.Enable", false))
        {
            ChatHandler(player->GetSession()).SendSysMessage("This server is running the |cff4CFF00Hardcore |rmodule.");
        }
    }

    void OnFirstLogin(Player* player)
    {
        if (sConfigMgr->GetOption<bool>("Hardcore.Enable", false))
        {
            player->AddAura(3758285, player);
        }
    }
};

void AddHardcorePlayerScripts()
{
    new HardcorePlayer();
}

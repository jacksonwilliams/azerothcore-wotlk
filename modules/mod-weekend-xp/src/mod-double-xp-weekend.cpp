#include "Configuration/Config.h"
#include "ScriptMgr.h"
#include "Player.h"
#include "Chat.h"
#include <time.h>

bool enabled;
uint32 xpAmount;
time_t t = time(NULL);
tm *now = localtime(&t);

class DoubleXpWeekend : public PlayerScript
{
public:
    DoubleXpWeekend() : PlayerScript("DoubleXpWeekend") {}

        void OnLogin(Player* player) override
        {
            // Announce to the player that the XP weekend is happeneing.
            if (!enabled)
                return;

            ChatHandler(player->GetSession()).PSendSysMessage("This server is running the |cff4CFF00Double XP Weekend |rmodule.");

            if (now->tm_wday == 5 /*Friday*/ || now->tm_wday == 6 /*Satureday*/ || now->tm_wday == 0/*Sunday*/)
                ChatHandler(player->GetSession()).PSendSysMessage("It's the weekend! Time to level up.", xpAmount);
        }

        void OnGiveXP(Player* /*p*/, uint32& amount, Unit* /*victim*/) override
        {
            if (!enabled)
                return;

            if (now->tm_wday == 5 /*Friday*/ || now->tm_wday == 6 /*Satureday*/ || now->tm_wday == 0/*Sunday*/)
                amount *= xpAmount;
        }
};

class DoubleXpWeekendConf : public WorldScript
{
public:
    DoubleXpWeekendConf() : WorldScript("DoubleXpWeekendConf") {}

    void OnBeforeConfigLoad(bool reload) override
    {
        if (!reload) {
            enabled = sConfigMgr->GetOption<bool>("XPWeekend.Enabled", true);
            xpAmount = sConfigMgr->GetOption<uint32>("XPWeekend.XpAmount", 2);
        }
    }
};


void AdddoublexpScripts()
{
    new DoubleXpWeekendConf();
    new DoubleXpWeekend();
}

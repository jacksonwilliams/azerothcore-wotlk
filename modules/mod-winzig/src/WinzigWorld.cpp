#include "Config.h"
#include "WinzigWorld.h"

bool WinzigWorld::Enabled;

int WinzigWorld::StackSize;

float WinzigWorld::FiveStarRate;
float WinzigWorld::FourStarRate;

int WinzigWorld::PromotionalGuarantee;
int WinzigWorld::FiveStarGuarantee;
int WinzigWorld::FeaturedGuarantee;
int WinzigWorld::FourStarGuarantee;

uint32 WinzigWorld::NPC;
uint32 WinzigWorld::StarterBox;
uint32 WinzigWorld::ClassicBox;
uint32 WinzigWorld::BurntBox;
uint32 WinzigWorld::FrozenBox;
uint32 WinzigWorld::ReagentPouch;

int WinzigWorld::CustomCurrency;
int WinzigWorld::DailyReward;
int WinzigWorld::LevelReward;
int WinzigWorld::KillReward;

void WinzigWorld::SetInitialWorldSettings()
{
    Enabled = sConfigMgr->GetOption<bool>("Winzig.Enable", true);

    StackSize = sConfigMgr->GetOption<int>("Winzig.StackSize", 5);

    FiveStarRate = sConfigMgr->GetOption<float>("Winzig.FiveStarRate", 0.006);
    FourStarRate = sConfigMgr->GetOption<float>("Winzig.FourStarRate", 0.051);

    PromotionalGuarantee = sConfigMgr->GetOption<int>("Winzig.PromotionalGuarantee", 2);
    FiveStarGuarantee = sConfigMgr->GetOption<int>("Winzig.FiveStarGuarantee", 90);
    FeaturedGuarantee = sConfigMgr->GetOption<int>("Winzig.FeaturedGuarantee", 2);
    FourStarGuarantee = sConfigMgr->GetOption<int>("Winzig.FourStarGuarantee", 10);

    NPC = sConfigMgr->GetOption<uint32>("Winzig.NPC", 17249);
    StarterBox = sConfigMgr->GetOption<uint32>("Winzig.StarterBox", 5621798);
    ClassicBox = sConfigMgr->GetOption<uint32>("Winzig.ClassicBox", 5621799);
    BurntBox = sConfigMgr->GetOption<uint32>("Winzig.BurntBox", 5621800);
    FrozenBox = sConfigMgr->GetOption<uint32>("Winzig.FrozenBox", 5621801);
    ReagentPouch = sConfigMgr->GetOption<uint32>("Winzig.ReagentPouch", 2251094);

    CustomCurrency = sConfigMgr->GetOption<int>("Winzig.CustomCurrency", 37711);
    DailyReward = sConfigMgr->GetOption<int>("Winzig.DailyReward", 90);
    LevelReward = sConfigMgr->GetOption<int>("Winzig.LevelReward", 75);
    KillReward = sConfigMgr->GetOption<int>("Winzig.KillReward", 10);
}

void AddWinzigWorldScripts()
{
    new WinzigWorld();
}

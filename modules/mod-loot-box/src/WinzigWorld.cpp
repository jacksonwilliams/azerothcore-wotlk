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

int WinzigWorld::NPC;
int WinzigWorld::Box;

std::vector<int> WinzigWorld::Promotions;
std::vector<int> WinzigWorld::Features;
std::vector<int> WinzigWorld::FiveStars;
std::vector<int> WinzigWorld::FourStars;
std::vector<int> WinzigWorld::ThreeStars;

int WinzigWorld::CustomCurrency;
int WinzigWorld::DailyReward;
int WinzigWorld::LevelReward;
int WinzigWorld::KillReward;

void loadItems(std::vector<int> &items, std::string ids)
{
    std::stringstream ss(ids);

    for (int i; ss >> i;) {
        items.push_back(i);

        if (ss.peek() == ',')
            ss.ignore();
    }
}

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

    NPC = sConfigMgr->GetOption<int>("Winzig.NPC", 17249);
    Box = sConfigMgr->GetOption<int>("Winzig.Box", 5621798);

    loadItems(Promotions, sConfigMgr->GetOption<std::string>("Winzig.Promotions", ""));
    loadItems(Features, sConfigMgr->GetOption<std::string>("Winzig.Features", ""));
    loadItems(FiveStars, sConfigMgr->GetOption<std::string>("Winzig.FiveStars", ""));
    loadItems(FourStars, sConfigMgr->GetOption<std::string>("Winzig.FourStars", ""));
    loadItems(ThreeStars, sConfigMgr->GetOption<std::string>("Winzig.ThreeStars", ""));

    CustomCurrency = sConfigMgr->GetOption<int>("Winzig.CustomCurrency", 37711);
    DailyReward = sConfigMgr->GetOption<int>("Winzig.DailyReward", 90);
    LevelReward = sConfigMgr->GetOption<int>("Winzig.LevelReward", 75);
    KillReward = sConfigMgr->GetOption<int>("Winzig.KillReward", 10);
}

void AddWinzigWorldScripts()
{
    new WinzigWorld();
}
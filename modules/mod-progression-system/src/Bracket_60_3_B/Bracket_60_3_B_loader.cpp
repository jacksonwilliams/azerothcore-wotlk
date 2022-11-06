#include "ProgressionSystem.h"

void AddBracket_60_3_B_Scripts()
{
    if (!(sConfigMgr->GetOption<int>("ProgressionSystem.Brackets", 0) & PROGRESSION_BRACKET_60_TIER_3_B_AHN_QIRAJ))
        return;
}
#ifndef _LOOT_BOX_LOADER_H_
#define _LOOT_BOX_LOADER_H_

void AddWinzigPlayerScripts();
void AddWinzigItemScripts();
void AddWinzigWorldScripts();
void AddWinzigCommandScripts();
void AddWinzigCreatureScripts();

void Addmod_loot_boxScripts()
{
    AddWinzigWorldScripts();
    AddWinzigPlayerScripts();
    AddWinzigItemScripts();
    AddWinzigCommandScripts();
    AddWinzigCreatureScripts();
}

#endif // _LOOT_BOX_LOADER_H_

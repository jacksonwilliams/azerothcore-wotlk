
#ifndef _WINZIG_CREATURE_H_
#define _WINZIG_CREATURE_H_

#include "ScriptMgr.h"
#include "Player.h"
#include "Config.h"
#include "Chat.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "Item.h"
#include "ItemTemplate.h"
#include <map>

#define MAX_OPTIONS         23
#define MAX_PAGE_NUMBER     700 // Values higher than this are considered Item IDs
#define NPC_TEXT_ID         4259 // Pre-existing NPC text
#define NPC_VENDOR_ID       5126979

enum GossipItemType : uint8
{
    DEPOSIT_ALL_REAGENTS = 16,
    MAIN_MENU = 17,
    VENDOR = 18
};

class npc_winzig : public CreatureScript
{
public:
    npc_winzig() : CreatureScript("npc_winzig") { }

    bool OnGossipHello(Player* player, Creature* creature) override;
    bool OnGossipSelect(Player* player, Creature* creature, uint32 item_subclass, uint32 gossipPageNumber) override;

    static std::string GetItemLink(uint32 entry, WorldSession* session);
    static std::string GetItemIcon(uint32 entry, uint32 width, uint32 height, int x, int y);
    static void ShowReagentItems(Player* player, Creature* creature, uint32 item_subclass, uint16 gossipPageNumber);
    static void ShowReagentItems(Player* player, Item* item, uint32 item_subclass, uint16 gossipPageNumber);
    static void WithdrawItem(Player* player, uint32 entry);
    static void UpdateItemCount(std::map<uint32, uint32>& entryToAmountMap, std::map<uint32, uint32>& entryToSubclassMap, Item* pItem, Player* player, uint32 bagSlot, uint32 itemSlot);
    static void DepositAllReagents(Player* player);
};

#endif // _WINZIG_CREATURE_H_

#ifndef _HARDCORE_H_
#define _HARDCORE_H_

#define SPELL_AURA_HARDCORE     3758285

// Taken from the in-game GPS command.
#define RAGEFIRE_CHASM_MAP_ID          389
#define DEADMINES_MAP_ID               36
#define WAILING_CAVERNS_MAP_ID         43
#define SHADOWFANG_KEEP_MAP_ID         33
#define BLACKFATHOM_DEEPS_MAP_ID       48
#define STORMWIND_STOCKADES_MAP_ID     34
#define RAZORFEN_KRAUL_MAP_ID          47
#define GNOMEREGAN_MAP_ID              90
#define SCARLET_MONASTERY_MAP_ID       189
#define RAZORFEN_DOWNS_MAP_ID          129
#define ULDAMAN_MAP_ID                 70
#define MARAUDON_MAP_ID                349
#define ZULFARRAK_MAP_ID               209
#define SUNKEN_TEMPLE_MAP_ID           109
#define BLACKROCK_DEPTHS_MAP_ID        230
#define DIRE_MAUL_MAP_ID               429
#define LOWER_BLACKROCK_SPIRE_MAP_ID   229
#define SCHOLOMANCE_MAP_ID             289
#define STRATHOLME_MAP_ID              329

// See: https://www.azerothcore.org/wiki/achievement
#define DEADMINES_ACHIEVEMENT               628
#define RAGEFIRE_CHASM_ACHIEVEMENT          629
#define WAILING_CAVERNS_ACHIEVEMENT         630
#define SHADOWFANG_KEEP_ACHIEVEMENT         631
#define BLACKFATHOM_DEEPS_ACHIEVEMENT       632
#define STORMWIND_STOCKADES_ACHIEVEMENT     633
#define GNOMEREGAN_ACHIEVEMENT              634
#define RAZORFEN_KRAUL_ACHIEVEMENT          635
#define RAZORFEN_DOWNS_ACHIEVEMENT          636
#define SCARLET_MONASTERY_ACHIEVEMENT       637
#define ULDAMAN_ACHIEVEMENT                 638
#define MARAUDON_ACHIEVEMENT                640
#define ZULFARRAK_ACHIEVEMENT               639
#define SUNKEN_TEMPLE_ACHIEVEMENT           641
#define BLACKROCK_DEPTHS_ACHIEVEMENT        642
#define DIRE_MAUL_ACHIEVEMENT               644
#define LOWER_BLACKROCK_SPIRE_ACHIEVEMENT   643
#define SCHOLOMANCE_ACHIEVEMENT             645
#define STRATHOLME_ACHIEVEMENT              646

class HardcoreMapInfo : public DataMap::Base
{
public:
    HardcoreMapInfo() : hardcore(true) {}
    bool hardcore;
};

#endif // _HARDCORE_H_

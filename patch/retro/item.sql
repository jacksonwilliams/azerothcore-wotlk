-- base id's
set @base_item_container = 90000;
set @base_item_armor = 91000;
set @base_item_weapon = 92000;

/*
* Weapons
*/

-- Decapitator
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 70000;

-- Greatsword
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 70001;

-- Bonegrinder
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 70002;

-- Shanker
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 70003;

-- Pike
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 70004;

-- Longbow
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 70005;

-- Gavel
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 70006;

-- Slicer
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 70007;

-- Right Ripper
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 70008;

-- Left Ripper
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 70009;

-- Rifle
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 70010;

-- Heavy Crossbow
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 70011;

-- Touch of Defeat
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 70012;

-- Cleaver
delete from item where itemid = 70013;
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 70013;

-- Staff
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 70014;

-- Shield Wall
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 70015;

-- Endgame
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 70016;

/*
* Warrior
*/

-- Helm
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80000;

-- Shoulders
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80001;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80002;

-- Bracers
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80003;

-- Gloves
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80004;

-- Belt
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80005;

-- Legs
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80006;

-- Boots
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80007;

/*
* Hunter
*/

-- Helm
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80008;

-- Shoulders
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80009;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80010;

-- Bracers
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80011;

-- Gloves
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80012;

-- Belt
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80013;

-- legs
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80014;

-- Boots
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80015;

/*
* Rogue
*/

-- Helm
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80016;

-- Shoulders
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80017;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80018;

-- Bracers
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80019;

-- Gloves
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80020;

-- Belt
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80021;

-- Legs
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80022;

-- Boots
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80023;

/*
* Priest
*/

-- Helm
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80024;

-- Shoulders
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80025;

-- Robe
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80026;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80027;

-- Bracers
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80028;

-- Gloves
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80029;

-- Belt
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80030;

-- Legs
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80031;

-- Boots
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80032;

/*
* Warlock
*/

-- Head
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80033;

-- Shoulders
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80034;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80035;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80036;

-- Bracers
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80037;

-- Gloves
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80038;

-- Belt
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80039;

-- Legs
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80040;

-- Boots
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80041;

/*
* Death Knight
*/

-- Helm
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80042;

-- Shoulders
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80043;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80044;

-- Bracers
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80045;

-- Gloves
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80046;

-- Belt
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80047;

-- Legs
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80048;

-- Boots
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80049;

/*
* Druid
*/

-- Helm
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80050;

-- Shoulders
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80051;

-- Robes
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80052;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80053;

-- Bracers
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80054;

-- Gloves
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80055;

-- Belt
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80056;

-- Legs
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80057;

-- Boots
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80058;

/*
* Mage
*/

-- Head
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80059;

-- Shoulders
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80060;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80061;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80062;

-- Bracers
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80063;

-- Gloves
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80064;

-- Belt
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80065;

-- Legs
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80066;

-- Boots
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80067;

/*
* Shaman
*/

-- Helm
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80068;

-- Shoulders
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80069;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80070;

-- Bracers
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80071;

-- Gloves
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80072;

-- Belt
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80073;

-- legs
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80074;

-- Boots
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80075;

/*
* Paladin
*/

-- Helm
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80076;

-- Shoulders
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80077;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80078;

-- Bracers
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80079;

-- Gloves
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80080;

-- Belt
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80081;

-- Legs
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80082;

-- Boots
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = 80083;

-- Boosted Starter Gear
/*
* Weapons
*/

-- Battleaxe
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_weapon;

-- Greatsword
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_weapon+1;

-- Shortbow
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_weapon+2;

-- Mace
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_weapon+3;

-- Shortsword
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_weapon+4;

-- Wand
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_weapon+5;

-- Axe
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_weapon+6;

-- Staff
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_weapon+7;

-- Battle Staff
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_weapon+8;

-- Shield
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_weapon+9;

-- Buckler
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_weapon+10;

-- Blunderbuss
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_weapon+11;

-- Dagger
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_weapon+12;

/*
* Warrior
*/

-- Shoulders
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+1;

-- Bracers
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+2;

-- Gloves
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+3;

-- Belt
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+4;

-- Legs
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+5;

-- Boots
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+6;

/*
* Paladin
*/

-- Shoulders
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+7;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+8;

-- Bracers
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+9;

-- Gloves
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+10;

-- Belt
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+11;

-- Legs
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+12;

-- Boots
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+13;

/*
* Hunter
*/

-- Shoulders
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+14;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+15;

-- Bracers
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+16;

-- Gloves
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+17;

-- Belt
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+18;

-- Legs
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+19;

-- Boots
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+20;

/*
* Rogue
*/

-- Shoulders
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+21;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+22;

-- Bracers
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+23;

-- Gloves
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+24;

-- Belt
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+25;

-- Legs
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+26;

-- Boots
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+27;

/*
* Priest
*/

-- Shoulders
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+28;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+29;

-- Bracers
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+30;

-- Gloves
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+31;

-- Belt
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+32;

-- legs
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+33;

-- Boots
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+34;

/*
* Shaman
*/

-- Shoulders
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+35;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+36;

-- Bracers
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+37;

-- Gloves
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+38;

-- Belt
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+39;

-- legs
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+40;

-- Boots
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+41;

/*
* Mage
*/

-- Shoulders
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+42;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+43;

-- Bracers
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+44;

-- Gloves
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+45;

-- Belt
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+46;

-- Legs
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+47;

-- Boots
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+48;

/*
* Warlock
*/

-- Shoulders
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+49;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+50;

-- Bracers
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+51;

-- Gloves
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+52;

-- Belt
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+53;

-- Legs
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+54;

-- Boots
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+55;

/*
* Druid
*/

-- Shoulders
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+56;

-- Chest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+57;

-- Bracers
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+58;

-- Gloves
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+59;

-- Belt
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+60;

-- Legs
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+61;

-- Boots
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_armor+62;

/*
* Containers
*/

-- Warrior
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_container;

replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_container+1;

replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_container+2;

-- Paladin
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_container+3;

-- Hunter
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_container+4;

replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_container+5;

-- Rogue
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_container+6;

replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_container+7;

replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_container+8;

-- Priest
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_container+9;

-- Shaman
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_container+10;

-- Mage
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_container+11;

-- Warlock
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_container+12;

-- Druid
replace into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid)
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from item_template where entry = @base_item_container+13;

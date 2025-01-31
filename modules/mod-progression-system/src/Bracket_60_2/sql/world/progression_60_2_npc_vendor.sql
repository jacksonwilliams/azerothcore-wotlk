-- One-handed weapons are on the same tier while two-handed weapons are a tier higher.
SET @EXTENDED_COST1 = 444; -- 5k honor
SET @EXTENDED_COST2 = 165; -- 10k honor
SET @EXTENDED_COST3 = 1006; -- 20k honor
SET @EXTENDED_COST4 = 2403; -- 40k honor
SET @EXTENDED_COST5 = 2569; -- 60k honor

-- Re-inserting the Vanilla PVP gear in Alterac Valley Vendors
DELETE FROM `npc_vendor` WHERE `entry` IN (13216, 13218);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(13216, 0, 19030, 0, 0, 1005, 0),
(13218, 0, 19029, 0, 0, 1005, 0),
(13216, 0, 19032, 0, 0, 1003, 0),
(13216, 0, 19045, 0, 0, 1002, 0),
(13218, 0, 19046, 0, 0, 1002, 0),
(13216, 0, 19084, 0, 0, @EXTENDED_COST1, 0),
(13216, 0, 19086, 0, 0, @EXTENDED_COST1, 0),
(13216, 0, 19319, 0, 0, 532, 0),
(13216, 0, 19320, 0, 0, @EXTENDED_COST1, 0),
(13218, 0, 19083, 0, 0, @EXTENDED_COST1, 0),
(13218, 0, 19085, 0, 0, @EXTENDED_COST1, 0),
(13218, 0, 19319, 0, 0, 532, 0),
(13218, 0, 19320, 0, 0, @EXTENDED_COST1, 0),
(13216, 0, 19097, 0, 0, @EXTENDED_COST1, 0),
(13216, 0, 19098, 0, 0, @EXTENDED_COST1, 0),
(13218, 0, 19095, 0, 0, @EXTENDED_COST1, 0),
(13218, 0, 19096, 0, 0, @EXTENDED_COST1, 0),
(13216, 0, 19091, 0, 0, @EXTENDED_COST1, 0),
(13216, 0, 19092, 0, 0, @EXTENDED_COST1, 0),
(13216, 0, 19093, 0, 0, @EXTENDED_COST1, 0),
(13216, 0, 19094, 0, 0, @EXTENDED_COST1, 0),
(13218, 0, 19087, 0, 0, @EXTENDED_COST1, 0),
(13218, 0, 19088, 0, 0, @EXTENDED_COST1, 0),
(13218, 0, 19089, 0, 0, @EXTENDED_COST1, 0),
(13218, 0, 19090, 0, 0, @EXTENDED_COST1, 0),
(13216, 0, 19100, 0, 0, @EXTENDED_COST1, 0),
(13216, 0, 19104, 0, 0, @EXTENDED_COST1, 0),
(13218, 0, 19099, 0, 0, @EXTENDED_COST1, 0),
(13218, 0, 19103, 0, 0, @EXTENDED_COST1, 0),
(13216, 0, 19102, 0, 0, @EXTENDED_COST2, 0),
(13218, 0, 19101, 0, 0, @EXTENDED_COST2, 0),
(13216, 0, 19308, 0, 0, @EXTENDED_COST2, 0),
(13216, 0, 19309, 0, 0, @EXTENDED_COST2, 0),
(13216, 0, 19310, 0, 0, @EXTENDED_COST2, 0),
(13216, 0, 19311, 0, 0, @EXTENDED_COST2, 0),
(13216, 0, 19312, 0, 0, @EXTENDED_COST2, 0),
(13216, 0, 19315, 0, 0, @EXTENDED_COST2, 0),
(13216, 0, 19321, 0, 0, @EXTENDED_COST2, 0),
(13216, 0, 19323, 0, 0, @EXTENDED_COST3, 0),
(13216, 0, 19324, 0, 0, @EXTENDED_COST2, 0),
(13218, 0, 19308, 0, 0, @EXTENDED_COST2, 0),
(13218, 0, 19309, 0, 0, @EXTENDED_COST2, 0),
(13218, 0, 19310, 0, 0, @EXTENDED_COST2, 0),
(13218, 0, 19311, 0, 0, @EXTENDED_COST2, 0),
(13218, 0, 19312, 0, 0, @EXTENDED_COST2, 0),
(13218, 0, 19315, 0, 0, @EXTENDED_COST2, 0),
(13218, 0, 19321, 0, 0, @EXTENDED_COST2, 0),
(13218, 0, 19323, 0, 0, @EXTENDED_COST3, 0),
(13218, 0, 19324, 0, 0, @EXTENDED_COST2, 0),
(13216, 0, 19325, 0, 0, @EXTENDED_COST3, 0),
(13216, 0, 21563, 0, 0, @EXTENDED_COST3, 0),
(13218, 0, 19325, 0, 0, @EXTENDED_COST3, 0),
(13218, 0, 21563, 0, 0, @EXTENDED_COST3, 0),
(13216, 0, 19316, 0, 0, 2354, 0),
(13216, 0, 19317, 0, 0, 2354, 0),
(13218, 0, 19316, 0, 0, 2354, 0),
(13218, 0, 19317, 0, 0, 2354, 0),
(13216, 0, 19301, 0, 0, 0, 0),
(13216, 0, 19307, 0, 0, 0, 0),
(13216, 0, 19318, 0, 0, 0, 0),
(13218, 0, 19301, 0, 0, 0, 0),
(13218, 0, 19307, 0, 0, 0, 0),
(13218, 0, 19318, 0, 0, 0, 0);

-- Thanthaldis Snowgleam <Stormpike Supply Officer> (13217)
-- item req lvl 55 blue
DELETE FROM `npc_vendor` WHERE (`entry` = 13217) AND `item` IN (19084,19086,19091,19092,19093,19094,19097,19098,19102,19104,19308,19309,19310,19311,19312,19315,19321,19323,19324,19325,21563);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(13217, 0, 19084, 0, 0, @EXTENDED_COST1, 0),
(13217, 0, 19086, 0, 0, @EXTENDED_COST1, 0),
(13217, 0, 19091, 0, 0, @EXTENDED_COST1, 0),
(13217, 0, 19092, 0, 0, @EXTENDED_COST1, 0),
(13217, 0, 19093, 0, 0, @EXTENDED_COST1, 0),
(13217, 0, 19094, 0, 0, @EXTENDED_COST1, 0),
(13217, 0, 19097, 0, 0, @EXTENDED_COST1, 0),
(13217, 0, 19098, 0, 0, @EXTENDED_COST1, 0),
(13217, 0, 19102, 0, 0, @EXTENDED_COST2, 0),
(13217, 0, 19104, 0, 0, @EXTENDED_COST1, 0),
(13217, 0, 19308, 0, 0, @EXTENDED_COST2, 0),
(13217, 0, 19309, 0, 0, @EXTENDED_COST2, 0),
(13217, 0, 19310, 0, 0, @EXTENDED_COST2, 0),
(13217, 0, 19311, 0, 0, @EXTENDED_COST2, 0),
(13217, 0, 19312, 0, 0, @EXTENDED_COST2, 0),
(13217, 0, 19315, 0, 0, @EXTENDED_COST2, 0),
(13217, 0, 19321, 0, 0, @EXTENDED_COST2, 0),
(13217, 0, 19323, 0, 0, @EXTENDED_COST3, 0),
(13217, 0, 19324, 0, 0, @EXTENDED_COST2, 0),
(13217, 0, 19325, 0, 0, @EXTENDED_COST3, 0),
(13217, 0, 21563, 0, 0, @EXTENDED_COST3, 0);

-- Jekyll Flandring <Frostwolf Supply Officer> (13219)
-- item req lvl 55 blue
DELETE FROM `npc_vendor` WHERE (`entry` = 13219) AND `item` IN (19083, 19085, 19087, 19088, 19089, 19090, 19095, 19096,19101,19103,19308,19309,19310,19311,19312,19315,19321,19323,19324,19325,21563);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(13219, 0, 19083, 0, 0, @EXTENDED_COST1, 0),
(13219, 0, 19085, 0, 0, @EXTENDED_COST1, 0),
(13219, 0, 19087, 0, 0, @EXTENDED_COST1, 0),
(13219, 0, 19088, 0, 0, @EXTENDED_COST1, 0),
(13219, 0, 19089, 0, 0, @EXTENDED_COST1, 0),
(13219, 0, 19090, 0, 0, @EXTENDED_COST1, 0),
(13219, 0, 19095, 0, 0, @EXTENDED_COST1, 0),
(13219, 0, 19096, 0, 0, @EXTENDED_COST1, 0),
(13219, 0, 19101, 0, 0, @EXTENDED_COST2, 0),
(13219, 0, 19103, 0, 0, @EXTENDED_COST1, 0),
(13219, 0, 19308, 0, 0, @EXTENDED_COST2, 0),
(13219, 0, 19309, 0, 0, @EXTENDED_COST2, 0),
(13219, 0, 19310, 0, 0, @EXTENDED_COST2, 0),
(13219, 0, 19311, 0, 0, @EXTENDED_COST2, 0),
(13219, 0, 19312, 0, 0, @EXTENDED_COST2, 0),
(13219, 0, 19315, 0, 0, @EXTENDED_COST2, 0),
(13219, 0, 19321, 0, 0, @EXTENDED_COST2, 0),
(13219, 0, 19323, 0, 0, @EXTENDED_COST3, 0),
(13219, 0, 19324, 0, 0, @EXTENDED_COST2, 0),
(13219, 0, 19325, 0, 0, @EXTENDED_COST3, 0),
(13219, 0, 21563, 0, 0, @EXTENDED_COST3, 0);

-- Master Sergeant Biggins <Accessories Quartermaster> (12781)
-- items req lvl 58 blue (sergeant)
DELETE FROM `npc_vendor` WHERE (`entry` = 12781) AND `item` IN (16342, 18443, 18445, 18448, 18452, 18454, 18456);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(12781, 0, 16342, 0, 0, @EXTENDED_COST1, 0),
(12781, 0, 18443, 0, 0, @EXTENDED_COST1, 0),
(12781, 0, 18445, 0, 0, @EXTENDED_COST1, 0),
(12781, 0, 18448, 0, 0, @EXTENDED_COST1, 0),
(12781, 0, 18452, 0, 0, @EXTENDED_COST1, 0),
(12781, 0, 18454, 0, 0, @EXTENDED_COST1, 0),
(12781, 0, 18456, 0, 0, @EXTENDED_COST1, 0);

-- Brave Stonehide <Accessories Quartermaster> (12793)
-- items req lvl 58 blue (sergeant items)
DELETE FROM `npc_vendor` WHERE (`entry` = 12793) AND `item` IN (16335, 16486, 16497, 16532, 18429, 18434, 18461);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(12793, 0, 16335, 0, 0, @EXTENDED_COST1, 0),
(12793, 0, 16486, 0, 0, @EXTENDED_COST1, 0),
(12793, 0, 16497, 0, 0, @EXTENDED_COST1, 0),
(12793, 0, 16532, 0, 0, @EXTENDED_COST1, 0),
(12793, 0, 18429, 0, 0, @EXTENDED_COST1, 0),
(12793, 0, 18434, 0, 0, @EXTENDED_COST1, 0),
(12793, 0, 18461, 0, 0, @EXTENDED_COST1, 0);

-- Samuel Hawke <League of Arathor Supply Officer> (15127)
-- items req lvl 58
DELETE FROM `npc_vendor` WHERE (`entry` = 15127) AND `item` IN (20041, 20042, 20043, 20044, 20045, 20046, 20047, 20048, 20049, 20050, 20051, 20052, 20053, 20054, 20071, 22478, 20061, 20059, 20060, 20055, 20056, 20057, 20058, 20073, 20069, 20070);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(15127, 0, 20041, 0, 0, @EXTENDED_COST1, 0),
(15127, 0, 20042, 0, 0, @EXTENDED_COST1, 0),
(15127, 0, 20043, 0, 0, @EXTENDED_COST1, 0),
(15127, 0, 20044, 0, 0, @EXTENDED_COST1, 0),
(15127, 0, 20045, 0, 0, @EXTENDED_COST1, 0),
(15127, 0, 20046, 0, 0, @EXTENDED_COST1, 0),
(15127, 0, 20047, 0, 0, @EXTENDED_COST1, 0),
(15127, 0, 20048, 0, 0, @EXTENDED_COST1, 0),
(15127, 0, 20049, 0, 0, @EXTENDED_COST1, 0),
(15127, 0, 20050, 0, 0, @EXTENDED_COST1, 0),
(15127, 0, 20051, 0, 0, @EXTENDED_COST1, 0),
(15127, 0, 20052, 0, 0, @EXTENDED_COST1, 0),
(15127, 0, 20053, 0, 0, @EXTENDED_COST1, 0),
(15127, 0, 20054, 0, 0, @EXTENDED_COST1, 0),
(15127, 0, 20071, 0, 0, @EXTENDED_COST1, 0),
(15127, 0, 20061, 0, 0, @EXTENDED_COST2, 0),
(15127, 0, 20059, 0, 0, @EXTENDED_COST2, 0),
(15127, 0, 20060, 0, 0, @EXTENDED_COST2, 0),
(15127, 0, 20055, 0, 0, @EXTENDED_COST2, 0),
(15127, 0, 20056, 0, 0, @EXTENDED_COST2, 0),
(15127, 0, 20057, 0, 0, @EXTENDED_COST2, 0),
(15127, 0, 20058, 0, 0, @EXTENDED_COST2, 0),
(15127, 0, 20073, 0, 0, @EXTENDED_COST2, 0),
(15127, 0, 20069, 0, 0, @EXTENDED_COST3, 0),
(15127, 0, 20070, 0, 0, @EXTENDED_COST3, 0);

-- Rutherford Twing <Defilers Supply Officer> (15126)
DELETE FROM `npc_vendor` WHERE (`entry` = 15126) AND `item` IN (20072, 20150, 20154, 20159, 20163, 20167, 20171, 20177, 20181, 20186, 20190, 20195, 20199, 20204, 20208, 20176, 20194, 20175, 20158, 20203, 20212, 20184, 20068, 20220, 20214);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(15126, 0, 20072, 0, 0, @EXTENDED_COST1, 0),
(15126, 0, 20150, 0, 0, @EXTENDED_COST1, 0),
(15126, 0, 20154, 0, 0, @EXTENDED_COST1, 0),
(15126, 0, 20159, 0, 0, @EXTENDED_COST1, 0),
(15126, 0, 20163, 0, 0, @EXTENDED_COST1, 0),
(15126, 0, 20167, 0, 0, @EXTENDED_COST1, 0),
(15126, 0, 20171, 0, 0, @EXTENDED_COST1, 0),
(15126, 0, 20177, 0, 0, @EXTENDED_COST1, 0),
(15126, 0, 20181, 0, 0, @EXTENDED_COST1, 0),
(15126, 0, 20186, 0, 0, @EXTENDED_COST1, 0),
(15126, 0, 20190, 0, 0, @EXTENDED_COST1, 0),
(15126, 0, 20195, 0, 0, @EXTENDED_COST1, 0),
(15126, 0, 20199, 0, 0, @EXTENDED_COST1, 0),
(15126, 0, 20204, 0, 0, @EXTENDED_COST1, 0),
(15126, 0, 20208, 0, 0, @EXTENDED_COST1, 0),
(15126, 0, 20176, 0, 0, @EXTENDED_COST2, 0),
(15126, 0, 20194, 0, 0, @EXTENDED_COST2, 0),
(15126, 0, 20175, 0, 0, @EXTENDED_COST2, 0),
(15126, 0, 20158, 0, 0, @EXTENDED_COST2, 0),
(15126, 0, 20203, 0, 0, @EXTENDED_COST2, 0),
(15126, 0, 20212, 0, 0, @EXTENDED_COST2, 0),
(15126, 0, 20184, 0, 0, @EXTENDED_COST2, 0),
(15126, 0, 20068, 0, 0, @EXTENDED_COST2, 0),
(15126, 0, 20220, 0, 0, @EXTENDED_COST3, 0),
(15126, 0, 20214, 0, 0, @EXTENDED_COST3, 0);

-- Illiyana Moonblaze <Silverwing Supply Officer> (14753)
DELETE FROM `npc_vendor` WHERE (`entry` = 14753) AND `item` IN (19514, 19522, 19530, 19538, 19570, 19562, 19554, 19546, 19578, 19580, 19582, 19583, 19587, 19589, 19595, 19596, 22752, 22749, 22750, 22748, 30497, 22672, 22753);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(14753, 0, 19514, 0, 0, @EXTENDED_COST1, 0),
(14753, 0, 19522, 0, 0, @EXTENDED_COST1, 0),
(14753, 0, 19530, 0, 0, @EXTENDED_COST1, 0),
(14753, 0, 19538, 0, 0, @EXTENDED_COST1, 0),
(14753, 0, 19570, 0, 0, @EXTENDED_COST2, 0),
(14753, 0, 19562, 0, 0, @EXTENDED_COST2, 0),
(14753, 0, 19554, 0, 0, @EXTENDED_COST1, 0),
(14753, 0, 19546, 0, 0, @EXTENDED_COST1, 0),
(14753, 0, 19578, 0, 0, @EXTENDED_COST2, 0),
(14753, 0, 19580, 0, 0, @EXTENDED_COST1, 0),
(14753, 0, 19582, 0, 0, @EXTENDED_COST2, 0),
(14753, 0, 19583, 0, 0, @EXTENDED_COST1, 0),
(14753, 0, 19587, 0, 0, @EXTENDED_COST2, 0),
(14753, 0, 19589, 0, 0, @EXTENDED_COST1, 0),
(14753, 0, 19595, 0, 0, @EXTENDED_COST2, 0),
(14753, 0, 19596, 0, 0, @EXTENDED_COST1, 0),
(14753, 0, 22752, 0, 0, @EXTENDED_COST3, 0),
(14753, 0, 22749, 0, 0, @EXTENDED_COST3, 0),
(14753, 0, 22750, 0, 0, @EXTENDED_COST3, 0),
(14753, 0, 22748, 0, 0, @EXTENDED_COST3, 0),
(14753, 0, 30497, 0, 0, @EXTENDED_COST3, 0),
(14753, 0, 22672, 0, 0, @EXTENDED_COST3, 0),
(14753, 0, 22753, 0, 0, @EXTENDED_COST3, 0);

-- Kelm Hargunth <Warsong Supply Officer> (14754)
DELETE FROM `npc_vendor` WHERE (`entry` = 14754) AND `item` IN (19510, 19518, 19526, 19534, 19566, 19558, 19550, 19542, 19578, 19580, 19582, 19583, 19587, 19589, 19595, 19596, 22747, 22740, 22741, 22673, 22676, 22651, 30498);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(14754, 0, 19510, 0, 0, @EXTENDED_COST1, 0),
(14754, 0, 19518, 0, 0, @EXTENDED_COST1, 0),
(14754, 0, 19526, 0, 0, @EXTENDED_COST1, 0),
(14754, 0, 19534, 0, 0, @EXTENDED_COST1, 0),
(14754, 0, 19566, 0, 0, @EXTENDED_COST2, 0),
(14754, 0, 19558, 0, 0, @EXTENDED_COST2, 0),
(14754, 0, 19550, 0, 0, @EXTENDED_COST1, 0),
(14754, 0, 19542, 0, 0, @EXTENDED_COST1, 0),
(14754, 0, 19578, 0, 0, @EXTENDED_COST2, 0),
(14754, 0, 19580, 0, 0, @EXTENDED_COST1, 0),
(14754, 0, 19582, 0, 0, @EXTENDED_COST2, 0),
(14754, 0, 19583, 0, 0, @EXTENDED_COST1, 0),
(14754, 0, 19587, 0, 0, @EXTENDED_COST2, 0),
(14754, 0, 19589, 0, 0, @EXTENDED_COST1, 0),
(14754, 0, 19595, 0, 0, @EXTENDED_COST2, 0),
(14754, 0, 19596, 0, 0, @EXTENDED_COST1, 0),
(14754, 0, 22747, 0, 0, @EXTENDED_COST3, 0),
(14754, 0, 22740, 0, 0, @EXTENDED_COST3, 0),
(14754, 0, 22741, 0, 0, @EXTENDED_COST3, 0),
(14754, 0, 22673, 0, 0, @EXTENDED_COST3, 0),
(14754, 0, 22676, 0, 0, @EXTENDED_COST3, 0),
(14754, 0, 22651, 0, 0, @EXTENDED_COST3, 0),
(14754, 0, 30498, 0, 0, @EXTENDED_COST3, 0);

-- ALLY
SET @ENTRY = 12785;
DELETE FROM `npc_vendor` WHERE (`entry` = @ENTRY) AND `item` IN (16369, 16391, 16392, 16393, 16396, 16397, 16401, 16403, 16405, 16406, 17562, 17564, 17594, 17596, 16413,
16414, 16417, 16419, 16421, 16422, 16425, 16426, 16430, 16431, 17567, 17568, 17599, 17600, 16415, 16416, 16418, 16420, 16423, 16424, 16427, 16428, 16429, 16432, 17566,
17569, 17598, 17601, 16409, 16410, 16433, 16434, 16435, 16436, 16518, 16519, 16521, 16522, 16523, 16524);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 16369, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16391, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16392, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16393, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16396, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16397, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16401, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16403, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16405, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16406, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17562, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17564, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17594, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17596, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16413, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16414, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16417, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16419, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16421, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16422, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16425, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16426, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16430, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16431, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17567, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17568, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17599, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17600, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16415, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16416, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16418, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16420, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16423, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16424, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16427, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16428, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16429, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16432, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17566, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17569, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17598, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17601, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16409, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16410, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16433, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16434, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16435, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16436, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16518, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16519, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16521, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16522, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16523, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16524, 0, 0, @EXTENDED_COST1, 0);

-- HORDE
SET @ENTRY = 12795;
DELETE FROM `npc_vendor` WHERE (`entry` = @ENTRY) AND `item` IN (16485, 16487, 16494, 16496, 16498, 16499, 16509, 16510, 16530, 16531, 17576, 17577, 17616, 17617, 16490,
16491, 16502, 16504, 16505, 16508, 16513, 16515, 16525, 16527, 17571, 17572, 17611, 17612, 19510, 19550, 16489, 16492, 16501, 16503, 16506, 16507, 16514, 16516,
16526, 16528, 17570, 17573, 17610, 17613, 16518, 16519, 16521, 16522, 16523, 16524, 16409, 16410, 16433, 16434, 16435, 16436);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 16485, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16487, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16494, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16496, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16498, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16499, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16509, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16510, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16530, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16531, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17576, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17577, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17616, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17617, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16490, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16491, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16502, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16504, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16505, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16508, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16513, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16515, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16525, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16527, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17571, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17572, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17611, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17612, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 19510, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 19550, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16489, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16492, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16501, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16503, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16506, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16507, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16514, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16516, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16526, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16528, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17570, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17573, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17610, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 17613, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16518, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16519, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16521, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16522, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16523, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16524, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16409, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16410, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16433, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16434, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16435, 0, 0, @EXTENDED_COST1, 0),
(@ENTRY, 0, 16436, 0, 0, @EXTENDED_COST1, 0);

/*
  Restore <Legacy Armor Quartermaster> lvl 60 blue items, do not delete the previous items lvl 50-59
  Sergeant Major Clate (12785) (alliance)
  First Sergeant Hola'mahi  (12795) (horde)
*/
DELETE FROM `npc_vendor` WHERE (`entry` = 12785) AND `item` IN (23272,23273,23274,23275,23276,23277,23278,23279,23280,23281,23282,23283,23284,23285,23286,23287,23288,23289,23290,23291,23292,23293,23294,23295,23296,23297,23298,23299,23300,23301,23302,23303,23304,23305,23306,23307,23308,23309,23310,23311,23312,23313,23314,23315,23316,23317,23318,23319,29594,29595,29596,29597,29598,29599);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(12785, 0, 23272, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23273, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23274, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23275, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23276, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23277, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23278, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23279, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23280, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23281, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23282, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23283, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23284, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23285, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23286, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23287, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23288, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23289, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23290, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23291, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23292, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23293, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23294, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23295, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23296, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23297, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23298, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23299, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23300, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23301, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23302, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23303, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23304, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23305, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23306, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23307, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23308, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23309, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23310, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23311, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23312, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23313, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23314, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23315, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23316, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23317, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23318, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 23319, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 29594, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 29595, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 29596, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 29597, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 29598, 0, 0, @EXTENDED_COST2, 0),
(12785, 0, 29599, 0, 0, @EXTENDED_COST2, 0);

DELETE FROM `npc_vendor` WHERE (`entry` = 12795) AND `item` IN (22843,22852,22855,22856,22857,22858,22859,22860,22862,22863,22864,22865,22867,22868,22869,22870,22872,22873,22874,22875,22876,22877,22878,22879,22880,22881,22882,22883,22884,22885,22886,22887,23243,23244,23251,23252,23253,23254,23255,23256,23257,23258,23259,23260,23261,23262,23263,23264,29600,29601,29602,29603,29604,29605);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(12795, 0, 22843, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22852, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22855, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22856, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22857, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22858, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22859, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22860, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22862, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22863, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22864, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22865, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22867, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22868, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22869, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22870, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22872, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22873, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22874, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22875, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22876, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22877, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22878, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22879, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22880, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22881, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22882, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22883, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22884, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22885, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22886, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 22887, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 23243, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 23244, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 23251, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 23252, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 23253, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 23254, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 23255, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 23256, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 23257, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 23258, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 23259, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 23260, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 23261, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 23262, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 23263, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 23264, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 29600, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 29601, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 29602, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 29603, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 29604, 0, 0, @EXTENDED_COST2, 0),
(12795, 0, 29605, 0, 0, @EXTENDED_COST2, 0);
-- Put only sql data in this file (insert, update, replace into, delete etc...).

DELETE FROM `item_template` WHERE `entry` = 5621798;
INSERT INTO `item_template` (`entry`, `name`, `displayid`, `Quality`, `stackable`, `spellid_1`, `spellcooldown_1`, `description`, `ScriptName`)
VALUES (5621798, 'Loot Box', 12331, 6, 250, 7931299, 1000, "I can't believe it's not gambling!", 'LootBoxItem');

UPDATE `item_template`
SET `name` = 'Macaroon', `displayid` = 51567, `maxcount` = 2147483647, `stackable` = 2147483647, `description` = 'Time is money, friend.'
WHERE entry = 37711;

UPDATE `item_template`
SET `bonding` = 0, `maxcount` = 0
WHERE `entry` IN (
    38577, 46779 ,19160, 33223, 32588, 45037, 49283, 38312, 44819, 38577, 38233,
    45047, 39286, 13583, 38312, 23709, 19054, 38311, 44819, 39656, 33219, 43489,
    45063, 20371, 19055, 23709, 49290, 49704, 54212, 49663, 49662, 23705, 23193,
    54452, 19054, 13584, 38314, 49284
);

UPDATE `item_template` SET `spellcharges_1` = -1 WHERE `entry` IN (
    13583, 39286, 39656, 44819, 20371, 19055, 49663, 49662, 19054, 13584
);

DELETE FROM `creature_model_info` WHERE `DisplayID` = 7359065;
INSERT INTO `creature_model_info` (`DisplayID`, `CombatReach`, `Gender`)
VALUES (7359065, 1.5, 1);

DELETE FROM `creature_template` WHERE `entry` = 5126979;
INSERT INTO `creature_template` (
    `entry`, `modelid1`, `name`, `subname`, `gossip_menu_id`, `minlevel`,
    `maxlevel`, `faction`, `npcflag`, `DamageModifier`, `BaseAttackTime`,
    `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `type`,
    `flags_extra`, `VerifiedBuild`
) VALUES (
    5126979, 11689, 'Winzig', 'Wobbling Goblin', 0, 60, 60, 35, 128, 1,
    2000, 2000, 4, 768, 2048, 7, 2, 12340
);
-- Replace Landro Longshot.
DELETE FROM `creature` WHERE `guid` = 565;
INSERT INTO `creature` (
    `guid`, `id1`, `equipment_id`, `position_x`, `position_y`,
    `position_z`, `orientation`, `spawntimesecs`, `wander_distance`,
    `curhealth`
) VALUES (
    565, 5126979, 0, -14397.5, 426.08, 7.97355, 5.51524, 300, 0, 4979
);
-- Rename `subname` of the two guards.
UPDATE `creature_template` SET `subname` = 'Wobbling Goblin' WHERE `entry` = 21045;

-- Populate Winzig's stock.
DELETE FROM `npc_vendor` WHERE `entry` = 5126979;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `ExtendedCost`)
VALUES
    (5126979, 0, 5621798, 3870077), -- Loot Box
    (5126979, 1, 4497, 3870077), -- Heavy Brown Bag
    (5126979, 2, 4499, 3870078), -- Huge Brown Bag
    (5126979, 3, 35223, 3870076), -- Papa Hummel's Old-Fashioned Pet Biscuit
    (5126979, 4, 13458, 3870075), -- Greater Nature Protection Potion
    (5126979, 5, 13457, 3870075), -- Greater Fire Protection Potion
    (5126979, 6, 13461, 3870075), -- Greater Arcane Protection Potion
    (5126979, 7, 13459, 3870075), -- Greater Shadow Protection Potion
    (5126979, 8, 13510, 3870077), -- Flask of the Titans
    (5126979, 9, 13512, 3870077), -- Flask of Supreme Power
    (5126979, 10, 13511, 3870077), -- Flask of Distilled Wisdom
    (5126979, 11, 13446, 3870075), -- Major Healing Potion
    (5126979, 12, 13444, 3870075), -- Major Mana Potion
    (5126979, 13, 13462, 3870075), -- Purification Potion
    (5126979, 14, 3387, 3870075), -- Limited Invulnerability Potion
    (5126979, 15, 6149, 3870075), -- Greater Mana Potion
    (5126979, 16, 3928, 3870075), -- Superior Healing Potion
    (5126979, 17, 9030, 3870075), -- Restorative Potion
    (5126979, 18, 9197, 3870075), -- Elixir of Dream Vision
    (5126979, 19, 1710, 3870075), -- Greater Healing Potion
    (5126979, 20, 3827, 3870075), -- Mana Potion
    (5126979, 21, 5634, 3870075), -- Free Action Potion
    (5126979, 22, 3826, 3870075), -- Major Troll's Blood Elixir
    (5126979, 23, 3386, 3870075), -- Potion of Curing
    (5126979, 24, 6048, 3870075), -- Shadow Protection Potion
    (5126979, 25, 3388, 3870075), -- Strong Troll's Blood Elixir
    (5126979, 26, 45621, 3870075); -- Elixir of Minor Accuracy

-- Flamewaker Protectors shouldn't mind control top threat.
UPDATE `smart_scripts` SET `target_type` = 6 WHERE `entryorguid` = 12119 AND `id` = 0;

-- Blackwing Spellbinder shouldn't polymorph.
DELETE FROM `smart_scripts` WHERE `entryorguid` = 12457 and `id` = 0;

-- Death Talon Wyrmguard shouldn't use brood powers.
DELETE FROM `smart_scripts` WHERE `entryorguid` = 12460 AND `id` = 1;
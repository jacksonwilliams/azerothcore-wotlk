INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1641437831789184769');

DELETE FROM `smart_scripts` WHERE `entryorguid`=2362200 AND `source_type`=9 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `id`=2 WHERE  `entryorguid`=2362200 AND `source_type`=9 AND `id`=3 AND `link`=0;
UPDATE `smart_scripts` SET `id`=3 WHERE  `entryorguid`=2362200 AND `source_type`=9 AND `id`=4 AND `link`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=23616 AND `source_type`=0 AND `id`=3 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) 
VALUES (23616, 0, 3, 0, 17, 0, 100, 0, 23622, 0, 0, 0, 0, 33, 23616, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 0, 'Kyle the Frenzied - On Summoned Unit - Quest Credit \'Kyle\'s Gone Missing!\'');
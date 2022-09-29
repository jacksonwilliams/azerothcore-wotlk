-- DB update
START TRANSACTION;

-- DROP unused column
ALTER TABLE `reagent_bank`
DROP COLUMN `character_id`;

COMMIT;

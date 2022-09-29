-- DB update
START TRANSACTION;

-- ADD NEW COLUMN
ALTER TABLE `reagent_bank` ADD COLUMN `account_id` INT NOT NULL FIRST;

-- UPDATE reagent_bank add account ids
UPDATE `reagent_bank` rb
INNER JOIN `characters` c ON rb.`character_id` = c.`guid`
SET rb.`account_id` = c.`account`
WHERE rb.`account_id` = 0;

COMMIT;

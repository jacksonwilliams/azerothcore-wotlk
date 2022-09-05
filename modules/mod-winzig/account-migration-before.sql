-- DB update
START TRANSACTION;

-- ADD NEW COLUMN
ALTER TABLE `reagent_bank`
ADD COLUMN `account_id` INT NOT NULL,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`account_id`, `item_entry`);

-- UPDATE reagent_bank add account ids
UPDATE `reagent_bank`
INNER JOIN `characters`
ON `reagent_bank`.`character_id` = `characters`.`guid`
SET `reagent_bank`.`account_id` = `characters`.`account`;

COMMIT;
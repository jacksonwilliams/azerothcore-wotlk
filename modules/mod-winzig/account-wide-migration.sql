-- DB update
START TRANSACTION;

-- ADD NEW COLUMN
ALTER TABLE `reagent_bank` ADD COLUMN `account_id` INT NOT NULL FIRST;

-- UPDATE reagent_bank add account ids
UPDATE `reagent_bank` rb
INNER JOIN `characters` c ON rb.`character_id` = c.`guid`
SET rb.`account_id` = c.`account`
WHERE rb.`account_id` = 0;

-- TEMP table to combine item amounts
DROP TABLE IF EXISTS `_temp_reagent_bank`;
CREATE TEMPORARY TABLE `_temp_reagent_bank`
(
    `account_id` int NOT NULL,
    `character_id` INT NOT NULL,
    `item_entry` int NOT NULL,
    `item_subclass` int NOT NULL,
    `amount` int NOT NULL,
    PRIMARY KEY (`account_id`,`character_id`,`item_entry`)
)DEFAULT CHARSET=utf8mb4;

INSERT INTO `_temp_reagent_bank`
SELECT account_id, MIN(character_id) character_id, item_entry, item_subclass, SUM(amount) amount
FROM reagent_bank
GROUP BY account_id, item_entry, item_subclass;

-- REPLACE reagent_bank with temp table to combine items on account.
TRUNCATE reagent_bank;
INSERT INTO reagent_bank SELECT * FROM _temp_reagent_bank;

-- UPDATE primary key
ALTER TABLE `reagent_bank`
DROP PRIMARY KEY,
ADD PRIMARY KEY (`account_id`, `item_entry`);

-- DROP unused column
ALTER TABLE `reagent_bank`
DROP COLUMN `character_id`;

COMMIT;

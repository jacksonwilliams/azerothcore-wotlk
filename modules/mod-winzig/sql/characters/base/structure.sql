-- Put only sql structure in this file (create table if exists, delete table, alter table etc...).
-- If you don't use this database, then delete this file.

CREATE TABLE IF NOT EXISTS `lootbox` (
    `id` SERIAL PRIMARY KEY,
    `player` BIGINT,
    `item` BIGINT,
    `rarity` TINYINT,
    `banner` TINYINT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `reagent_bank` (
    `character_id` int NOT NULL,
    `item_entry` int NOT NULL,
    `item_subclass` int NOT NULL,
    `amount` int NOT NULL,
    PRIMARY KEY (`character_id`,`item_entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
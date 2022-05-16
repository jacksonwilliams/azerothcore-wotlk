CREATE TABLE IF NOT EXISTS `item_loot_box` (
    `id` SERIAL PRIMARY KEY,
    `item` INT UNSIGNED,
    `season` TINYINT,
    `rarity` TINYINT,
    `box` TINYINT,
    `exclusive` BOOLEAN
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `lootbox` (
    `id` SERIAL PRIMARY KEY,
    `player` BIGINT,
    `item` BIGINT,
    `rarity` TINYINT,
    `banner` TINYINT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

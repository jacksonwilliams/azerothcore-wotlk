-- Put only sql structure in this file (create table if exists, delete table, alter table etc...).
-- If you don't use this database, then delete this file.

CREATE TABLE IF NOT EXISTS `class_titles` (
    `id` SERIAL PRIMARY KEY,
    `account` INTEGER,
    `class` INTEGER,
    `title` INTEGER
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
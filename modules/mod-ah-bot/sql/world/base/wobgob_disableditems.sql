-- empty disabled items.
TRUNCATE mod_auctionhousebot_disabled_items;

-- enable cloths
INSERT INTO `mod_auctionhousebot_disabled_items` 
VALUES 
(2589), (2592), (4306), (4338), (14047);

-- enable elemental items
INSERT INTO `mod_auctionhousebot_disabled_items` 
VALUES 
(7070), (7069), (7068), (7067), (7075), (7077), (7079), (7081);

-- enable metal and stone items
INSERT INTO `mod_auctionhousebot_disabled_items` 
VALUES 
(2836), (2770), (2776), (2838), (2772), (3858), (2835), (2775), (7912), (10620), (2771), (7911);

-- update the min/max item for each AH
-- 0/0 Alliance
-- 0/0 Horde
-- 250/1000 Neutral
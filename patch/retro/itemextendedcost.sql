set @ARMOR_PRIMARY    = 54500;
set @ARMOR_SECONDARY  = 43300;
set @ARMOR_TERTIARY   = 34700;
set @WEAPON_PRIMARY   = 55000;
set @WEAPON_SECONDARY = 38000;
set @WEAPON_TERTIARY  = 16500;
set @WSG_MARK         = 20558;
set @AB_MARK          = 20559;
set @BASE_WEAPON      = 5000;
set @BASE_ARMOR       = 6000;

REPLACE INTO itemextendedcost VALUES
    -- Weapons
    (@BASE_WEAPON, @WEAPON_TERTIARY, 0, 0, @WSG_MARK, @AB_MARK, 0, 0, 0, 10, 10, 0, 0, 0, 0, 0), -- Off-Hand
    (@BASE_WEAPON+1, @WEAPON_TERTIARY, 0, 0, @WSG_MARK, @AB_MARK, 0, 0, 0, 10, 10, 0, 0, 0, 0, 0), -- Shield
    (@BASE_WEAPON+2, @WEAPON_PRIMARY, 0, 0, @WSG_MARK, @AB_MARK, 0, 0, 0, 15, 15, 0, 0, 0, 0, 0), -- 2H
    (@BASE_WEAPON+3, @WEAPON_SECONDARY, 0, 0, @WSG_MARK, @AB_MARK, 0, 0, 0, 15, 15, 0, 0, 0, 0, 0), -- 1H
    (@BASE_WEAPON+4, @WEAPON_SECONDARY, 0, 0, @WSG_MARK, @AB_MARK, 0, 0, 0, 15, 15, 0, 0, 0, 0, 0), -- Ranged

    -- Armor
    (@BASE_ARMOR, @ARMOR_TERTIARY, 0, 0, @WSG_MARK, @AB_MARK, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0), -- Wrist
    (@BASE_ARMOR+1, @ARMOR_TERTIARY, 0, 0, @WSG_MARK, @AB_MARK, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0), -- Waist
    (@BASE_ARMOR+2, @ARMOR_TERTIARY, 0, 0, @WSG_MARK, @AB_MARK, 0, 0, 0, 10, 10, 0, 0, 0, 0, 0), -- Feet
    (@BASE_ARMOR+3, @ARMOR_TERTIARY, 0, 0, @WSG_MARK, @AB_MARK, 0, 0, 0, 10, 10, 0, 0, 0, 0, 0), -- Shoulder
    (@BASE_ARMOR+4, @ARMOR_SECONDARY, 0, 0, @WSG_MARK, @AB_MARK, 0, 0, 0, 10, 10, 0, 0, 0, 0, 0), -- Hands
    (@BASE_ARMOR+5, @ARMOR_PRIMARY, 0, 0, @WSG_MARK, @AB_MARK, 0, 0, 0, 15, 15, 0, 0, 0, 0, 0), -- Chest
    (@BASE_ARMOR+6, @ARMOR_TERTIARY, 0, 0, @WSG_MARK, @AB_MARK, 0, 0, 0, 15, 15, 0, 0, 0, 0, 0), -- Legs
    (@BASE_ARMOR+7, @ARMOR_PRIMARY, 0, 0, @WSG_MARK, @AB_MARK, 0, 0, 0, 15, 15, 0, 0, 0, 0, 0); -- Head

set @R14_WEAPON_PRIMARY   = 55000;
set @R14_WEAPON_SECONDARY = 38000;
set @R14_ARMOR_PRIMARY    = 54500;
set @R14_ARMOR_SECONDARY  = 43300;
set @R14_ARMOR_TERTIARY   = 34700;

REPLACE INTO itemextendedcost VALUES
    -- Macaroons
    (3870075, 0, 0, 0, 37711, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0),
    (3870076, 0, 0, 0, 37711, 0, 0, 0, 0, 80, 0, 0, 0, 0, 0, 0),
    (3870077, 0, 0, 0, 37711, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0),
    (3870078, 0, 0, 0, 37711, 0, 0, 0, 0, 320, 0, 0, 0, 0, 0, 0),
    (3870079, 0, 0, 0, 37711, 0, 0, 0, 0, 2700, 0, 0, 0, 0, 0, 0),

    -- High Warlord/Grand Marshal
    (4000, @R14_WEAPON_PRIMARY, 0, 0, 18713, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Recurve/Bullseye
    (4001, @R14_WEAPON_PRIMARY, 0, 0, 18713, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Crossbow/Repeater
    (4002, @R14_WEAPON_PRIMARY, 0, 0, 19368, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Street Sweeper/Hand Cannon
    (4003, @R14_WEAPON_PRIMARY, 0, 0, 19353, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Battle Axe/Sunderer
    (4004, @R14_WEAPON_PRIMARY, 0, 0, 19357, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Pulverizer/Battle Hammer
    (4005, @R14_WEAPON_PRIMARY, 0, 0, 17074, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Pig Sticker/Glaive
    (4006, @R14_WEAPON_PRIMARY, 0, 0, 19355, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- War Staff/Stave
    (4007, @R14_WEAPON_PRIMARY, 0, 0, 19334, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Greatsword/Claymore
    (4008, @R14_WEAPON_PRIMARY, 0, 0, 19357, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Destroyer/Demolisher
    (4009, @R14_WEAPON_SECONDARY, 0, 0, 17066, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Shield Wall/Aegis
    (4010, @R14_WEAPON_SECONDARY, 0, 0, 19352, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Blade/Longsword
    (4011, @R14_WEAPON_SECONDARY, 0, 0, 17068, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Cleaver/Handaxe
    (4012, @R14_WEAPON_SECONDARY, 0, 0, 18816, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Razor/Dirk
    (4013, @R14_WEAPON_SECONDARY, 0, 0, 19335, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Bludgeon/Punisher
    (4014, @R14_WEAPON_SECONDARY, 0, 0, 19351, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Quickblade/Swiftblade
    (4015, @R14_WEAPON_SECONDARY, 0, 0, 19365, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Right Claw/Right Hand Blade
    (4016, @R14_WEAPON_SECONDARY, 0, 0, 19365, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Left Claw/Left Hand Blade
    (4017, @R14_WEAPON_SECONDARY, 0, 0, 19347, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Spellblade/Mageblade
    (4018, @R14_WEAPON_SECONDARY, 0, 0, 17103, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Battle Mace/Warhammer
    (4019, @R14_WEAPON_SECONDARY, 0, 0, 19142, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Tome of Destruction/Tome of Power
    (4020, @R14_WEAPON_SECONDARY, 0, 0, 19142, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- Tome of Mending/Tome of Restoration
    (4021, @R14_ARMOR_PRIMARY, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (4022, @R14_ARMOR_SECONDARY, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (4023, @R14_ARMOR_TERTIARY, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

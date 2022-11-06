-- sound
set @sound_leather_cloth = 7;
set @sound_mail = 10;
set @sound_plate = 11;
set @sound_wood = 13;
set @sound_bow = 12;
set @sound_2h = 9;
set @sound_1h = 8;
set @sound_wand = 21;

-- spell visual
set @spell_visual_bow = 5;
set @spell_visual_gun = 224;
set @spell_visual_wand = 2799;
set @staff_visual = 161;

-- base item ids
set @base_item_container = 90000;
set @base_item_armor = 91000;
set @base_item_weapon = 92000;

DELIMITER //

DROP PROCEDURE IF EXISTS `itemdisplayinfo_container` //
CREATE PROCEDURE itemdisplayinfo_container(IN id INT(10), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, inventoryicon1, groupsoundindex) VALUES
      (id, inventoryicon1, groupsoundindex);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_helmet` //
CREATE PROCEDURE itemdisplayinfo_helmet(IN id INT(10), IN leftmodel TEXT(255), IN leftmodeltexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10), IN helmetgeosetvisual1 INT(10), IN helmetgeosetvisual2 INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, leftmodel, leftmodeltexture, inventoryicon1, groupsoundindex, helmetgeosetvisual1, helmetgeosetvisual2) VALUES
      (id, leftmodel, leftmodeltexture, inventoryicon1, groupsoundindex, helmetgeosetvisual1, helmetgeosetvisual2);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_shoulders` //
CREATE PROCEDURE itemdisplayinfo_shoulders(IN id INT(10), IN leftmodel TEXT(255), IN rightmodel TEXT(255), IN leftmodeltexture TEXT(255), IN rightmodeltexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, leftmodel, rightmodel, leftmodeltexture, rightmodeltexture, inventoryicon1, groupsoundindex) VALUES
      (id, leftmodel, rightmodel, leftmodeltexture, rightmodeltexture, inventoryicon1, groupsoundindex);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_chest` //
CREATE PROCEDURE itemdisplayinfo_chest(IN id INT(10), IN upperarmtexture TEXT(255), IN lowerarmtexture TEXT(255), IN uppertorsotexture TEXT(255), IN lowertorsotexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, upperarmtexture, lowerarmtexture, uppertorsotexture, lowertorsotexture, inventoryicon1, groupsoundindex) VALUES
      (id, upperarmtexture, lowerarmtexture, uppertorsotexture, lowertorsotexture, inventoryicon1, groupsoundindex);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_tunic` //
CREATE PROCEDURE itemdisplayinfo_tunic(IN id INT(10), IN upperarmtexture TEXT(255), IN lowerarmtexture TEXT(255), IN uppertorsotexture TEXT(255), IN lowertorsotexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10), IN geosetgroup1 INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, upperarmtexture, lowerarmtexture, uppertorsotexture, lowertorsotexture, inventoryicon1, groupsoundindex, geosetgroup1) VALUES
      (id, upperarmtexture, lowerarmtexture, uppertorsotexture, lowertorsotexture, inventoryicon1, groupsoundindex, geosetgroup1);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_robe` //
CREATE PROCEDURE itemdisplayinfo_robe(IN id INT(10), IN upperarmtexture TEXT(255), IN lowerarmtexture TEXT(255), IN uppertorsotexture TEXT(255), IN lowertorsotexture TEXT(255), IN upperlegtexture TEXT(255), IN lowerlegtexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10), IN geosetgroup1 INT(10), IN geosetgroup3 INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, upperarmtexture, lowerarmtexture, uppertorsotexture, lowertorsotexture, upperlegtexture, lowerlegtexture, inventoryicon1, groupsoundindex, geosetgroup1, geosetgroup3) VALUES
      (id, upperarmtexture, lowerarmtexture, uppertorsotexture, lowertorsotexture, upperlegtexture, lowerlegtexture, inventoryicon1, groupsoundindex, geosetgroup1, geosetgroup3);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_bracers` //
CREATE PROCEDURE itemdisplayinfo_bracers(IN id INT(10), IN lowerarmtexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, lowerarmtexture, inventoryicon1, groupsoundindex) VALUES
      (id, lowerarmtexture, inventoryicon1, groupsoundindex);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_gloves` //
CREATE PROCEDURE itemdisplayinfo_gloves(IN id INT(10), IN lowerarmtexture TEXT(255), IN handstexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10), IN geosetgroup1 INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, lowerarmtexture, handstexture, inventoryicon1, groupsoundindex, geosetgroup1) VALUES
      (id, lowerarmtexture, handstexture, inventoryicon1, groupsoundindex, geosetgroup1);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_belt` //
CREATE PROCEDURE itemdisplayinfo_belt(IN id INT(10), IN upperlegtexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, upperlegtexture, inventoryicon1, groupsoundindex) VALUES
      (id, upperlegtexture, inventoryicon1, groupsoundindex);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_legs` //
CREATE PROCEDURE itemdisplayinfo_legs(IN id INT(10),  IN upperlegtexture TEXT(255), IN lowerlegtexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, upperlegtexture, lowerlegtexture, inventoryicon1, groupsoundindex) VALUES
      (id, upperlegtexture, lowerlegtexture, inventoryicon1, groupsoundindex);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_legs_skirt` //
CREATE PROCEDURE itemdisplayinfo_legs_skirt(IN id INT(10),  IN upperlegtexture TEXT(255), IN lowerlegtexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10), IN geosetgroup3 INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, upperlegtexture, lowerlegtexture, inventoryicon1, groupsoundindex, geosetgroup3) VALUES
      (id, upperlegtexture, lowerlegtexture, inventoryicon1, groupsoundindex, geosetgroup3);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_boots` //
CREATE PROCEDURE itemdisplayinfo_boots(IN id INT(10), IN leftmodel TEXT(255), IN rightmodel TEXT(255), IN leftmodeltexture TEXT(255), IN rightmodeltexture TEXT (255), IN lowerlegtexture TEXT(255), IN foottexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10), IN geosetgroup1 INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, leftmodel, rightmodel, leftmodeltexture, rightmodeltexture, lowerlegtexture, foottexture, inventoryicon1, groupsoundindex, geosetgroup1) VALUES
      (id, leftmodel, rightmodel, leftmodeltexture, rightmodeltexture, lowerlegtexture, foottexture, inventoryicon1, groupsoundindex, geosetgroup1);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_weapon` //
CREATE PROCEDURE itemdisplayinfo_weapon(IN id INT(10), IN leftmodel TEXT(255), IN leftmodeltexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, leftmodel, leftmodeltexture, inventoryicon1, groupsoundindex) VALUES
    (id, leftmodel, leftmodeltexture, inventoryicon1, groupsoundindex);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_ranged` //
CREATE PROCEDURE itemdisplayinfo_ranged(IN id INT(10), IN leftmodel TEXT(255), IN leftmodeltexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10), IN spellvisualid INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, leftmodel, leftmodeltexture, inventoryicon1, groupsoundindex, spellvisualid) VALUES
    (id, leftmodel, leftmodeltexture, inventoryicon1, groupsoundindex, spellvisualid);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_staff` //
CREATE PROCEDURE itemdisplayinfo_staff(IN id INT(10), IN leftmodel TEXT(255), IN leftmodeltexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10), IN itemvisual INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, leftmodel, leftmodeltexture, inventoryicon1, groupsoundindex, itemvisual) VALUES
    (id, leftmodel, leftmodeltexture, inventoryicon1, groupsoundindex, itemvisual);
END//

DELIMITER ;

/*
* Weapons
*/

-- Decapitator
CALL itemdisplayinfo_weapon(70000, 'axe_2h_pvp400_c_01.mdx', 'axe_2h_pvp400_c_01blue', 'inv_axe_2h_pvp400_c_01', @sound_2h);

-- Greatsword
CALL itemdisplayinfo_weapon(70001, 'sword_2h_pvp400_c_01.mdx', 'sword_2h_pvp400_c_01blue', 'inv_sword_2h_pvp400_c_01', @sound_2h);

-- Bonegrinder
CALL itemdisplayinfo_weapon(70002, 'mace_2h_pvp400_c_01.mdx', 'mace_2h_pvp400_c_01blue', 'inv_mace_2h_pvp400_c_01', @sound_2h);

-- Shanker
CALL itemdisplayinfo_weapon(70003, 'knife_1h_pvp400_c_01.mdx', 'knife_1h_pvp400_c_01blue', 'inv_knife_1h_pvp400_c_01', @sound_2h);

-- Pike
CALL itemdisplayinfo_weapon(70004, 'polearm_2h_pvp400_c_01.mdx', 'polearm_2h_pvp400_c_01blue', 'inv_polearm_2h_pvp400_c_01', @sound_2h);

-- Longbow
CALL itemdisplayinfo_weapon(70005, 'bow_1h_pvp400_c_01.mdx', 'bow_1h_pvp400_c_01blue', 'inv_bow_1h_pvp400_c_01', @sound_2h);

-- Gavel
CALL itemdisplayinfo_weapon(70006, 'mace_1h_pvp400_c_01.mdx', 'mace_1h_pvp400_c_01blue', 'inv_mace_1h_pvp400_c_01', @sound_2h);

-- Slicer
CALL itemdisplayinfo_weapon(70007, 'sword_1h_pvp400_c_01.mdx', 'sword_1h_pvp400_c_01_blue', 'inv_sword_161', @sound_2h);

-- Right Ripper
CALL itemdisplayinfo_weapon(70008, 'hand_1h_pvp400_c_01right.mdx', 'hand_1h_pvp400_c_01blue', 'inv_hand_1h_pvp400_c_01', @sound_2h);

-- Left Ripper
CALL itemdisplayinfo_weapon(70009, 'hand_1h_pvp400_c_01left.mdx', 'hand_1h_pvp400_c_01blue', 'inv_hand_1h_pvp400_c_01', @sound_2h);

-- Rifle
CALL itemdisplayinfo_weapon(70010, 'firearm_2h_rifle_pvp400_c_01.mdx', 'firearm_2h_rifle_pvp400_c_01blue', 'firearm_2h_rifle_pvp400_c_01', @sound_2h);

-- Heavy Crossbow
CALL itemdisplayinfo_weapon(70011, 'bow_2h_crossbow_pvp400_c_01.mdx', 'bow_2h_crossbow_pvp400_c_01blue', 'inv_weapon_crossbow_39', @sound_2h);

-- Touch of Defeat
CALL itemdisplayinfo_weapon(70012, 'wand_1h_pvp400_c_01.mdx', 'wand_1h_pvp400_c_01_blue', 'inv_wand_1h_pvp400_c_01', @sound_2h);

-- Cleaver
CALL itemdisplayinfo_weapon(70013, 'axe_1h_pvp400_c_01.mdx', 'axe_1h_pvp400_c_01blue', 'inv_axe_1h_pvp400_c_01', @sound_2h);

-- Staff
CALL itemdisplayinfo_weapon(70014, 'stave_2h_pvp400_c_01.mdx', 'stave_2h_pvp400_c_01_blue', 'inv_stave_2h_pvp400_c_01', @sound_2h);

-- Shield Wall
CALL itemdisplayinfo_weapon(70015, 'shield_pvp400_c_01.mdx', 'shield_pvp400_c_01_blue', 'inv_shield_pvp400_c_01', @sound_2h);

-- Endgame
CALL itemdisplayinfo_weapon(70016, 'misc_1h_book_c_05.mdx', 'misc_1h_book_c_05', 'inv_misc_book_18', @sound_2h);

/*
* Warrior
*/

-- Head
CALL itemdisplayinfo_helmet(80000, 'helm_plate_pvpwarrior_c_01.mdx', 'helm_plate_pvpwarrior_c_01blue', 'inv_helm_plate_pvpwarrior_c_01', @sound_plate, 248, 306);

-- Shoulders
CALL itemdisplayinfo_shoulders(80001, 'lshoulder_plate_pvpwarrior_c_01.mdx', 'rshoulder_plate_pvpwarrior_c_01.mdx', 'shoulder_pvpwarrior_c_01blue', 'shoulder_pvpwarrior_c_01blue', 'inv_shoulder_plate_pvpwarrior_c_01', @sound_plate);

-- Chest
CALL itemdisplayinfo_chest(80002, 'plate_pvpwarrior_c_01blue_sleeve_au', 'plate_pvpwarrior_c_01blue_sleeve_al', 'plate_pvpwarrior_c_01blue_chest_tu', 'plate_pvpwarrior_c_01blue_chest_tl', 'inv_chest_plate_pvpwarrior_c_01', @sound_plate);

-- Bracers
CALL itemdisplayinfo_bracers(80003, 'plate_pvpwarrior_c_01blue_bracer_al', 'inv_bracer_plate_pvpwarrior_c_01', @sound_plate);

-- Gloves
CALL itemdisplayinfo_gloves(80004, 'plate_pvpwarrior_c_01blue_glove_al', 'plate_pvpwarrior_c_01blue_glove_ha', 'inv_glove_plate_pvpwarrior_c_01', @sound_plate, 3);

-- Belt
CALL itemdisplayinfo_belt(80005, 'plate_pvpwarrior_c_01blue_belt_lu', 'inv_belt_plate_pvpwarrior_c_01', @sound_plate);

-- Legs
CALL itemdisplayinfo_legs(80006, 'plate_pvpwarrior_c_01blue_pant_lu', 'plate_pvpwarrior_c_01blue_pant_ll', 'inv_pants_plate_pvpwarrior_c_01', @sound_plate);

-- Boots
CALL itemdisplayinfo_boots(80007, 'LShoulder_Plate_A_01.mdx', 'RShoulder_Plate_A_01.mdx', 'Shoulder_Plate_A_01Black', 'Shoulder_Plate_A_01Black', 'plate_pvpwarrior_c_01blue_boot_ll', 'plate_pvpwarrior_c_01blue_boot_fo', 'inv_boots_plate_pvpwarrior_c_01', @sound_plate, 4);

/*
* Hunter
*/

-- Head
CALL itemdisplayinfo_helmet(80008, 'helm_mail_pvphunter_c_01.mdx', 'helm_mail_pvphunter_c_01_blue', 'inv_helm_mail_pvphunter_c_01', @sound_mail, 248, 306);

-- Shoulders
CALL itemdisplayinfo_shoulders(80009, 'lshoulder_mail_pvphunter_c_01.mdx', 'rshoulder_mail_pvphunter_c_01.mdx', 'shoulder_mail_pvphunter_c_01_blue', 'shoulder_mail_pvphunter_c_01_blue', 'inv_shoulder_mail_pvphunter_c_01', @sound_mail);

-- Chest
CALL itemdisplayinfo_chest(80010, 'mail_pvphunter_c_01_blue_sleeve_au', 'mail_pvphunter_c_01_blue_sleeve_al', 'mail_pvphunter_c_01_blue_chest_tu', 'mail_pvphunter_c_01_blue_chest_tl', 'inv_chest_mail_pvphunter_c_01', @sound_mail);

-- Bracers
CALL itemdisplayinfo_bracers(80011, 'mail_pvphunter_c_01_blue_bracer_al', 'inv_bracer_mail_pvphunter_c_01', @sound_mail);

-- Gloves
CALL itemdisplayinfo_gloves(80012, 'mail_pvphunter_c_01_blue_glove_al', 'mail_pvphunter_c_01_blue_glove_ha', 'inv_glove_mail_pvphunter_c_01', @sound_mail, 2);

-- Belt
CALL itemdisplayinfo_belt(80013, 'mail_pvphunter_c_01_blue_belt_lu', 'inv_belt_mail_pvphunter_c_01', @sound_mail);

-- Legs
CALL itemdisplayinfo_legs(80014, 'mail_pvphunter_c_01_blue_pant_lu', 'mail_pvphunter_c_01_blue_pant_ll', 'inv_pant_mail_pvphunter_c_01', @sound_mail);

-- Boots
CALL itemdisplayinfo_boots(80015, '', '', '', '', 'mail_pvphunter_c_01_blue_boot_ll', 'mail_pvphunter_c_01_blue_boot_fo', 'inv_boots_mail_pvphunter_c_01', @sound_mail, 2);

/*
* Rogue
*/

-- Head
CALL itemdisplayinfo_helmet(80016, 'helm_leather_pvprogue_c_01.mdx', 'helm_leather_pvprogue_c_01', 'inv_helmet_leather_pvprogue_c_01', @sound_leather_cloth, 248, 306);

-- Shoulders
CALL itemdisplayinfo_shoulders(80017, 'lshoulder_leather_pvprogue_c_01.mdx', 'rshoulder_leather_pvprogue_c_01.mdx', 'shoulder_leather_pvprogue_c_01', 'shoulder_leather_pvprogue_c_01', 'inv_shoulder_152', @sound_leather_cloth);

-- Tunic
CALL itemdisplayinfo_chest(80018, 'leather_pvprogue_c_01_sleeve_au', 'leather_pvprogue_c_01_glove_al', 'leather_pvprogue_c_01_chest_tu', 'leather_pvprogue_c_01_chest_tl', 'inv_chest_leather_24', @sound_leather_cloth);

-- Bracers
CALL itemdisplayinfo_bracers(80019, 'leather_pvprogue_c_01_bracer_al', 'inv_bracer_leather_pvprogue_c_01', @sound_leather_cloth);

-- Gloves
CALL itemdisplayinfo_gloves(80020, 'leather_pvprogue_c_01_glove_al', 'leather_pvprogue_c_01_glove_ha', 'inv_glove_leather_pvprogue_c_01', @sound_leather_cloth, 1);

-- Belt
CALL itemdisplayinfo_belt(80021, 'leather_pvprogue_c_01_belt_lu', 'inv_belt_leather_pvprogue_c_01', @sound_leather_cloth);

-- Legs
CALL itemdisplayinfo_legs(80022, 'leather_pvprogue_c_01_pant_lu', 'leather_pvprogue_c_01_pant_ll', 'inv_pants_leather_pvprogue_c_01', @sound_leather_cloth);

-- Boots
CALL itemdisplayinfo_boots(80023, '', '', '', '', 'leather_pvprogue_c_01_boot_ll', 'leather_pvprogue_c_01_boot_fo', 'inv_boots_leather_pvprogue_c_01', @sound_leather_cloth, 0);

/*
* Priest
*/

-- Head
CALL itemdisplayinfo_helmet(80024, 'helm_cloth_pvppriest_c_01.mdx', 'helm_cloth_pvppriest_c_01white', 'inv_helm_robe_pvppriest_c_01', @sound_leather_cloth, 248, 306);

-- Shoulders
CALL itemdisplayinfo_shoulders(80025, 'lshoulder_cloth_pvppriest_c_01.mdx', 'rshoulder_cloth_pvppriest_c_01.mdx', 'shoulder_cloth_pvppriest_c_01white', 'shoulder_cloth_pvppriest_c_01white', 'inv_shoulder_robe_pvppriest_c_01', @sound_leather_cloth);

-- Chest
CALL itemdisplayinfo_robe(80026, 'cloth_pvppriest_c_01white_sleeve_au', 'cloth_pvppriest_c_01white_sleeve_al', 'cloth_pvppriest_c_01white_chest_tu', 'cloth_pvppriest_c_01white_chest_tl', 'cloth_pvppriest_c_01white_robe_lu', 'cloth_pvppriest_c_01white_robe_ll', 'inv_chest_robe_pvppriest_c_01', @sound_leather_cloth, 1, 1);

-- Tunic
CALL itemdisplayinfo_tunic(80027, 'cloth_pvppriest_c_01white_sleeve_au', 'cloth_pvppriest_c_01white_sleeve_al', 'cloth_pvppriest_c_01white_chest_tu', 'cloth_pvppriest_c_01white_chest_tl', 'inv_chest_robe_pvppriest_c_01', @sound_leather_cloth, 1);

-- Bracers
CALL itemdisplayinfo_bracers(80028, 'cloth_pvppriest_c_01white_bracer_al', 'inv_bracer_robe_pvppriest_c_01', @sound_leather_cloth);

-- Gloves
CALL itemdisplayinfo_gloves(80029, 'cloth_pvppriest_c_01white_glove_al', 'cloth_pvppriest_c_01white_glove_ha', 'inv_gauntlets_robe_pvppriest_c_01', @sound_leather_cloth, 0);

-- Belt
CALL itemdisplayinfo_belt(80030, 'cloth_pvppriest_c_01white_belt_lu', 'inv_belt_robe_pvppriest_c_01', @sound_leather_cloth);

-- Legs
CALL itemdisplayinfo_legs(80031, 'cloth_pvppriest_c_01white_pant_lu', 'cloth_pvppriest_c_01white_pant_ll', 'inv_pants_robe_pvppriest_c_01', @sound_leather_cloth);

-- Boots
CALL itemdisplayinfo_boots(80032, '', '', '', '', 'cloth_pvppriest_c_01white_boot_ll', 'cloth_pvppriest_c_01white_boot_fo', 'inv_boots_robe_pvppriest_c_01', @sound_leather_cloth, 0);

/*
* Warlock
*/
  
-- Head
CALL itemdisplayinfo_helmet(80033, 'helm_cloth_pvpwarlock_c_01.mdx', 'helm_cloth_pvpwarlock_c_01_black', 'inv_helmet_cloth_pvpwarlock_c_01', @sound_leather_cloth, 248, 306);

-- Shoulders
CALL itemdisplayinfo_shoulders(80034, 'lshoulder_cloth_pvpwarlock_c_01.mdx', 'rshoulder_cloth_pvpwarlock_c_01.mdx', 'shoulder_cloth_pvpwarlock_c_01_black', 'shoulder_cloth_pvpwarlock_c_01_black', 'inv_shoulder_cloth_pvpwarlock_c_01', @sound_leather_cloth);

-- Rainment
CALL itemdisplayinfo_robe(80035, 'cloth_pvpwarlock_c_01_black_sleeve_au', 'cloth_pvpwarlock_c_01_black_glove_al', 'cloth_pvpwarlock_c_01_black_chest_tu', 'cloth_pvpwarlock_c_01_black_chest_tl', 'cloth_pvpwarlock_c_01_black_robe_lu', 'cloth_pvpwarlock_c_01_black_robe_ll', 'inv_chest_cloth_pvpwarlock_c_01', @sound_leather_cloth, 0, 1);

-- Tunic
CALL itemdisplayinfo_tunic(80036, 'cloth_pvpwarlock_c_01_black_sleeve_au', 'cloth_pvpwarlock_c_01_black_glove_al', 'cloth_pvpwarlock_c_01_black_chest_tu', 'cloth_pvpwarlock_c_01_black_chest_tl', 'inv_chest_cloth_pvpwarlock_c_01', @sound_leather_cloth, 0);

-- Bracers
CALL itemdisplayinfo_bracers(80037, 'cloth_pvpwarlock_c_01_black_bracer_al', 'inv_bracer_cloth_pvpwarlock_c_01', @sound_leather_cloth);

-- Gloves
CALL itemdisplayinfo_gloves(80038, 'cloth_pvpwarlock_c_01_black_glove_al', 'cloth_pvpwarlock_c_01_black_glove_ha', 'inv_gauntlets_cloth_pvpwarlock_c_01', @sound_leather_cloth, 0);

-- Belt
CALL itemdisplayinfo_belt(80039, 'cloth_pvpwarlock_c_01_black_belt_lu', 'inv_belt_cloth_pvpwarlock_c_01', @sound_leather_cloth);

-- Legs
CALL itemdisplayinfo_legs(80040, 'cloth_pvpwarlock_c_01black_pant_lu', 'cloth_pvpwarlock_c_01black_pant_ll', 'inv_pants_cloth_pvpwarlock_c_01', @sound_leather_cloth);

-- Boots
CALL itemdisplayinfo_boots(80041, '', '', '', '', 'cloth_pvpwarlock_c_01_black_boot_ll', 'cloth_pvpwarlock_c_01_black_boot_fo', 'inv_boots_cloth_pvpwarlock_c_01', @sound_leather_cloth, 0);

/*
* Death Knight
*/

-- Head
CALL itemdisplayinfo_helmet(80042, 'helm_plate_pvpdeathknight_c_01.mdx', 'helm_plate_pvpdeathknight_c_01', 'inv_helm_plate_pvpdeathknight_c_01', @sound_plate, 248, 306);

-- Shoulders
CALL itemdisplayinfo_shoulders(80043, 'lshoulder_plate_pvpdeathknight_c_01.mdx', 'rshoulder_plate_pvpdeathknight_c_01.mdx', 'plate_pvpdeathknight_c_01', 'plate_pvpdeathknight_c_01', 'inv_shoulder_plate_pvpdeathknight_c_01', @sound_plate);

-- Chest
CALL itemdisplayinfo_chest(80044, 'plate_pvpdeathknight_c_01_sleeve_au', 'plate_pvpdeathknight_c_01_sleeve_al', 'plate_pvpdeathknight_c_01_chest_tu', 'plate_pvpdeathknight_c_01_chest_tl', 'inv_chest_plate_pvpdeathknight_c_01', @sound_plate);

-- Bracers
CALL itemdisplayinfo_bracers(80045, 'plate_pvpdeathknight_c_01_bracer_al', 'inv_bracer_plate_pvpdeathknight_c_01', @sound_plate);

-- Gloves
CALL itemdisplayinfo_gloves(80046, 'plate_pvpdeathknight_c_01_glove_al', 'plate_pvpdeathknight_c_01_glove_ha', 'inv_gauntlets_plate_pvpdeathknight_c_01', @sound_plate, 3);

-- Belt
CALL itemdisplayinfo_belt(80047, 'plate_pvpdeathknight_c_01_belt_lu ', 'inv_belt_plate_pvpdeathknight_c_01', @sound_plate);

-- Legs
CALL itemdisplayinfo_legs(80048, 'plate_pvpdeathknight_c_01_pant_lu', 'plate_pvpdeathknight_c_01_pant_ll', 'inv_pants_plate_pvpdeathknight_c_01', @sound_plate);

-- Boots
CALL itemdisplayinfo_boots(80049, 'LShoulder_Plate_A_01.mdx', 'RShoulder_Plate_A_01.mdx', 'Shoulder_Plate_A_01Black', 'Shoulder_Plate_A_01Black', 'plate_pvpdeathknight_c_01_boot_ll', 'plate_pvpdeathknight_c_01_boot_fo', 'inv_boots_plate_pvpdeathknight_c_01', @sound_plate, 4);

/*
* Druid
*/

-- Helm
CALL itemdisplayinfo_helmet(80050, 'helm_leather_pvpdruid_c_01.mdx', 'helmleather_pvpdruid_c_01cream', 'inv_helm_leather_pvpdruid_c_01', @sound_leather_cloth, 248, 306);

-- Shoulders
CALL itemdisplayinfo_shoulders(80051, 'lshoulder_leather_pvpdruid_c_01.mdx', 'rshoulder_leather_pvpdruid_c_01.mdx', 'shoulderleather_pvpdruid_c_01cream', 'shoulderleather_pvpdruid_c_01cream', 'inv_shoulder_leather_pvpdruid_c_01', @sound_leather_cloth);

-- Chest
CALL itemdisplayinfo_robe(80052, 'leather_pvpdruid_c_01cream_sleeve_au', 'leather_pvpdruid_c_01cream_glove_al', 'leather_pvpdruid_c_01cream_chest_tu', 'leather_pvpdruid_c_01cream_chest_tl', 'leather_pvpdruid_c_01cream_robe_lu', 'leather_pvpdruid_c_01cream_robe_ll', 'inv_chest_leather_pvpdruid_c_01', @sound_leather_cloth, 1, 1);

-- Tunic
CALL itemdisplayinfo_tunic(80053, 'leather_pvpdruid_c_01cream_sleeve_au', 'leather_p leather_pvpdruid_c_01cream_glove_al', 'leather_pvpdruid_c_01cream_chest_tu', 'leather_pvpdruid_c_01cream_chest_tl', 'inv_chest_leather_pvpdruid_c_01', @sound_leather_cloth, 0);

-- Bracers
CALL itemdisplayinfo_bracers(80054, 'leather_pvpdruid_c_01cream_bracer_al', 'inv_bracer_leather_pvpdruid_c_01', @sound_leather_cloth);

-- Gloves
CALL itemdisplayinfo_gloves(80055, 'leather_pvpdruid_c_01cream_glove_al', 'leather_pvpdruid_c_01cream_glove_ha', 'inv_glove_leather_pvpdruid_c_01', @sound_leather_cloth, 3);

-- Belt
CALL itemdisplayinfo_belt(80056, 'leather_pvpdruid_c_01cream_belt_lu', 'inv_belt_leather_pvpdruid_c_01', @sound_leather_cloth);

-- Legs
CALL itemdisplayinfo_legs(80057, 'leather_pvpdruid_c_01cream_pant_lu', 'leather_pvpdruid_c_01cream_pant_ll', 'inv_pants_leather_pvpdruid_c_01', @sound_leather_cloth);

-- Boots
CALL itemdisplayinfo_boots(80058, '', '', '', '', 'leather_pvpdruid_c_01cream_boot_ll', 'leather_pvpdruid_c_01cream_boot_fo', 'inv_boots_leather_pvpdruid_c_01', @sound_leather_cloth, 1);

/*
* Mage
*/

-- Head
CALL itemdisplayinfo_helmet(80059, 'helm_cloth_pvpmage_c_01.mdx', 'helm_cloth_pvpmage_c_01yellow', 'inv_helm_cloth_pvpmage_c_01', @sound_leather_cloth, 248, 306);

-- Shoulders
CALL itemdisplayinfo_shoulders(80060, 'lshoulder_cloth_pvpmage_c_01.mdx', 'rshoulder_cloth_pvpmage_c_01.mdx', 'shoulder_cloth_pvpmage_c_01yellow', 'shoulder_cloth_pvpmage_c_01yellow', 'inv_shoulder_cloth_pvpmage_c_01', @sound_leather_cloth);

-- Chest
CALL itemdisplayinfo_robe(80061, 'cloth_pvpmage_c_01yellow_sleeve_au', 'cloth_pvpmage_c_01yellow_sleeve_al', 'cloth_pvpmage_c_01yellow_chest_tu', 'cloth_pvpmage_c_01yellow_chest_tl', 'cloth_pvpmage_c_01yellow_robe_lu', 'cloth_pvpmage_c_01yellow_robe_ll', 'inv_chest_cloth_pvpmage_c_01', @sound_leather_cloth, 1, 1);

-- Tunic
CALL itemdisplayinfo_tunic(80062, 'cloth_pvpmage_c_01yellow_sleeve_au', 'cloth_pvpmage_c_01yellow_sleeve_al', 'cloth_pvpmage_c_01yellow_chest_tu', 'cloth_pvpmage_c_01yellow_chest_tl', 'inv_chest_cloth_pvpmage_c_01', @sound_leather_cloth, 1);

-- Bracers
CALL itemdisplayinfo_bracers(80063, 'cloth_pvpwarlock_c_01_black_bracer_al', 'inv_bracer_cloth_pvpmage_c_01', @sound_leather_cloth);

-- Gloves
CALL itemdisplayinfo_gloves(80064, 'cloth_pvpmage_c_01yellow_glove_al', 'cloth_pvpmage_c_01yellow_glove_ha', 'inv_gauntlets_cloth_pvpmage_c_01', @sound_leather_cloth, 0);

-- Belt
CALL itemdisplayinfo_belt(80065, 'cloth_pvpmage_c_01yellow_belt_lu', 'inv_belt_cloth_pvpmage_c_01', @sound_leather_cloth);

-- Legs
CALL itemdisplayinfo_legs(80066, 'cloth_pvpmage_c_01yellow_pant_lu', 'cloth_pvpmage_c_01yellow_pant_ll', 'inv_pants_cloth_pvpmage_c_01', @sound_leather_cloth);

-- Boots
CALL itemdisplayinfo_boots(80067, '', '', '', '', '', 'cloth_pvpmage_c_01yellow_boot_fo', 'inv_boots_cloth_pvpmage_c_01', @sound_leather_cloth, 0);

/*
* Shaman
*/

-- Head
CALL itemdisplayinfo_helmet(80068, 'helm_mail_pvpshaman_c_01.mdx', 'helm_mail_pvpshaman_c_01beige', 'inv_helmet_mail_pvpshaman_c_01', @sound_mail, 0, 0);

-- Shoulders
CALL itemdisplayinfo_shoulders(80069, 'lshoulder_mail_pvpshaman_c_01.mdx', 'rshoulder_mail_pvpshaman_c_01.mdx', 'shoulder_mail_pvpshaman_c_01beige', 'shoulder_mail_pvpshaman_c_01beige', 'inv_shoulder_mail_pvpshaman_c_01', @sound_mail);

-- Chest
CALL itemdisplayinfo_chest(80070, 'mail_pvpshaman_c_01beige_sleeve_au', '', 'mail_pvpshaman_c_01beige_chest_tu', 'mail_pvpshaman_c_01beige_chest_tl', 'inv_chest_mail_pvpshaman_c_01', @sound_mail);

-- Bracers
CALL itemdisplayinfo_bracers(80071, 'mail_pvpshaman_c_01beige_bracer_al', 'inv_bracer_mail_pvpshaman_c_01', @sound_mail);

-- Gloves
CALL itemdisplayinfo_gloves(80072, 'mail_pvpshaman_c_01beige_glove_al', 'mail_pvpshaman_c_01beige_glove_ha', 'inv_gauntlets_mail_pvpshaman_c_01', @sound_mail, 3);

-- Belt
CALL itemdisplayinfo_belt(80073, 'mail_pvpshaman_c_01beige_belt_lu', 'inv_belt_mail_pvpshaman_c_01', @sound_mail);

-- Legs
CALL itemdisplayinfo_legs_skirt(80074, 'mail_pvpshaman_c_01beige_robe_lu', 'mail_pvpshaman_c_01beige_robe_ll', 'inv_pants_mail_pvpshaman_c_01', @sound_mail, 1);

-- Boots
CALL itemdisplayinfo_boots(80075, '', '', '', '', 'mail_pvpshaman_c_01beige_boot_ll', 'mail_pvpshaman_c_01beige_boot_fo', 'inv_boots_mail_pvpshaman_c_01', @sound_mail, 0);

/*
* Paladin
*/

-- Head
CALL itemdisplayinfo_helmet(80076, 'helm_plate_pvppaladin_c_01.mdx', 'helm_plate_pvppaladin_c_01orange', 'inv_helm_plate_pvppaladin_c_01', @sound_plate, 248, 306);

-- Shoulders
CALL itemdisplayinfo_shoulders(80077, 'lshoulder_plate_pvppaladin_c_01.mdx', 'rshoulder_plate_pvppaladin_c_01.mdx', 'shoulder_plate_pvppaladin_c_01orange', 'shoulder_plate_pvppaladin_c_01orange', 'inv_shoulder_plate_pvppaladin_c_01', @sound_plate);

-- Chest
CALL itemdisplayinfo_chest(80078, 'plate_pvppaladin_c_01orange_sleeve_au', '', 'plate_pvppaladin_c_01orange_chest_tu', 'plate_pvppaladin_c_01orange_chest_tl', 'inv_chest_plate_pvppaladin_c_01', @sound_plate);

-- Bracers
CALL itemdisplayinfo_bracers(80079, 'plate_pvppaladin_c_01orange_bracer_al', 'inv_bracer_plate_pvppaladin_c_01', @sound_plate);

-- Gloves
CALL itemdisplayinfo_gloves(80080, 'plate_pvppaladin_c_01orange_glove_al', 'plate_pvppaladin_c_01orange_glove_ha', 'inv_glove_plate_pvppaladin_c_01', @sound_plate, 3);

-- Belt
CALL itemdisplayinfo_belt(80081, 'plate_pvppaladin_c_01orange_belt_lu', 'inv_belt_plate_pvppaladin_c_01', @sound_plate);

-- Legs
CALL itemdisplayinfo_legs(80082, 'plate_pvppaladin_c_01orange_pant_lu', 'plate_pvppaladin_c_01orange_pant_ll', 'inv_pants_plate_pvppaladin_c_01', @sound_plate);

-- Boots
CALL itemdisplayinfo_boots(80083, 'LShoulder_Plate_A_01.mdx', 'RShoulder_Plate_A_01.mdx', 'Shoulder_Plate_A_01Black', 'Shoulder_Plate_A_01Black', 'plate_pvppaladin_c_01orange_boot_ll', 'plate_pvppaladin_c_01orange_boot_fo', 'inv_boots_plate_pvppaladin_c_01', @sound_plate, 4);

-- Boosted Starter Gear

/*
* Weapons
*/

-- Battleaxe
call itemdisplayinfo_weapon(@base_item_weapon, 'axe_2h_horde_d_04.mdx', 'axe_2h_horde_d_04blue', 'inv_axe_09', @sound_2h);

-- Greatsword
call itemdisplayinfo_weapon(@base_item_weapon+1, 'sword_2h_claymore_b_02.mdx', 'sword_2h_claymore_b_02white', 'inv_sword_19', @sound_2h);

-- Shortbow
call itemdisplayinfo_ranged(@base_item_weapon+2, 'bow_1h_horde_c_01.mdx', 'bow_1h_horde_c_01purple', 'inv_weapon_bow_08', @sound_bow, @spell_visual_bow);

-- Mace
call itemdisplayinfo_weapon(@base_item_weapon+3, 'hammer_1h_epic_d_01.mdx', 'hammer_epic_d_01silver', 'inv_hammer_05', @sound_1h);

-- Sword
call itemdisplayinfo_weapon(@base_item_weapon+4, 'sword_1h_horde_c_02.mdx', 'sword_1h_horde_c_02gold', 'inv_sword_43', @sound_1h);

-- Wand
call itemdisplayinfo_ranged(@base_item_weapon+5, 'wand_1h_standard_a_01.mdx', 'wand_1h_standard_a_01black', 'inv_wand_02', @sound_wand, @spell_visual_wand);

-- Axe
call itemdisplayinfo_weapon(@base_item_weapon+6, 'axe_1h_horde_c_02.mdx', 'axe_1h_horde_c_02black', 'inv_weapon_halberd_05', @sound_1h);

-- Staff
call itemdisplayinfo_staff(@base_item_weapon+7, 'stave_2h_other_d_01.mdx', 'stave_2h_other_d_01green', 'inv_jewelry_talisman_12', @sound_wood, @staff_visual);

-- Battle Staff
call itemdisplayinfo_weapon(@base_item_weapon+8, 'stave_2h_long_b_03.mdx', 'bow_1h_standard_c_01white', 'inv_staff_01', @sound_wood);

-- Shield
call itemdisplayinfo_weapon(@base_item_weapon+9, 'shield_horde_a_02.mdx', 'shield_horde_a_02steel', 'inv_shield_17', @sound_2h);

-- Buckler
call itemdisplayinfo_weapon(@base_item_weapon+10, 'buckler_round_a_01.mdx', 'shield_round_a_01black', 'inv_shield_02', @sound_2h);

-- Blunderbuss
call itemdisplayinfo_ranged(@base_item_weapon+11, 'firearm_2h_rifle_a_04.mdx', 'firearm_2h_rifle_a_03scopesilver', 'inv_weapon_rifle_06', @sound_2h, @spell_visual_gun);

-- Dagger
call itemdisplayinfo_weapon(@base_item_weapon+12, 'knife_1h_exotic_b_02.mdx', 'knife_1h_exotic_b_02red', 'inv_sword_17', @sound_1h);


/*
* Warrior
*/

-- Shoulders
CALL itemdisplayinfo_shoulders(@base_item_armor, 'lshoulder_plate_c_01.mdx', 'rshoulder_plate_c_01.mdx', 'shoulder_plate_c_01white', 'shoulder_plate_c_01white', 'inv_shoulder_29', @sound_mail);

-- Chest
CALL itemdisplayinfo_chest(@base_item_armor+1, 'plate_c_01white_sleeve_au', '', 'plate_c_01white_chest_tu', 'plate_c_01white_chest_tl', 'inv_chest_chain_05', @sound_mail);

-- Bracers
CALL itemdisplayinfo_bracers(@base_item_armor+2, 'plate_c_01white_bracer_al', 'inv_bracer_16', @sound_mail);

-- Gloves
CALL itemdisplayinfo_gloves(@base_item_armor+3, 'plate_c_01white_glove_al', 'plate_c_01white_glove_ha', 'inv_gauntlets_26', @sound_mail, 3);

-- Belt
CALL itemdisplayinfo_belt(@base_item_armor+4, 'plate_c_01white_belt_lu', 'inv_belt_18', @sound_mail);

-- Legs
CALL itemdisplayinfo_legs(@base_item_armor+5, 'plate_c_01white_pant_lu', 'plate_c_01white_pant_ll', 'inv_pants_01', @sound_mail);

-- Boots
CALL itemdisplayinfo_boots(@base_item_armor+6, '', '', '', '', 'plate_c_01white_boot_ll', 'plate_c_01white_boot_fo', 'inv_boots_plate_06', @sound_mail, 0);

/*
* Paladin
*/

-- Shoulders
CALL itemdisplayinfo_shoulders(@base_item_armor+7, 'lshoulder_plate_c_01.mdx', 'rshoulder_plate_c_01.mdx', 'shoulder_plate_c_01gold', 'shoulder_plate_c_01gold', 'inv_shoulder_29', @sound_mail);

-- Chest
CALL itemdisplayinfo_chest(@base_item_armor+8, 'plate_c_01gold_sleeve_au', '', 'plate_c_01gold_chest_tu', 'plate_c_01gold_chest_tl', 'inv_chest_chain_05', @sound_mail);

-- Bracers
CALL itemdisplayinfo_bracers(@base_item_armor+9, 'plate_c_01gold_bracer_al', 'inv_bracer_16', @sound_mail);

-- Gloves
CALL itemdisplayinfo_gloves(@base_item_armor+10, 'plate_c_01gold_glove_al', 'plate_c_01gold_glove_ha', 'inv_gauntlets_26', @sound_mail, 3);

-- Belt
CALL itemdisplayinfo_belt(@base_item_armor+11, 'plate_c_01gold_belt_lu', 'inv_belt_18', @sound_mail);

-- Legs
CALL itemdisplayinfo_legs(@base_item_armor+12, 'plate_c_01gold_pant_lu', 'plate_c_01gold_pant_ll', 'inv_pants_01', @sound_mail);

-- Boots
CALL itemdisplayinfo_boots(@base_item_armor+13, '', '', '', '', 'plate_c_01gold_boot_ll', 'plate_c_01gold_boot_fo', 'inv_boots_plate_06', @sound_mail, 0);

/*
* Hunter
*/

-- Shoulders
CALL itemdisplayinfo_shoulders(@base_item_armor+14, 'lshoulder_leather_common_b_02.mdx', 'rshoulder_leather_common_b_02.mdx', 'leather_common_b_02', 'leather_common_b_02', 'inv_shoulder_139', @sound_leather_cloth);

-- Chest
call itemdisplayinfo_tunic(@base_item_armor+15, 'leather_common_b_02_sleeve_au', '', 'leather_common_b_02_chest_tu', 'leather_common_b_02_chest_tl', 'inv_chest_leather_28', @sound_leather_cloth, 0);

-- Bracers
CALL itemdisplayinfo_bracers(@base_item_armor+16, 'leather_common_b_02_bracer_al', 'inv_bracer_67', @sound_leather_cloth);

-- Gloves
CALL itemdisplayinfo_gloves(@base_item_armor+17, 'leather_common_b_02_glove_al', 'leather_common_b_02_glove_ha', 'inv_gauntlets_115', @sound_leather_cloth, 0);

-- Belt
CALL itemdisplayinfo_belt(@base_item_armor+18, 'leather_common_b_02_belt_lu', 'inv_belt_90', @sound_leather_cloth);

-- Legs
CALL itemdisplayinfo_legs(@base_item_armor+19, 'leather_common_b_02_pant_lu', 'leather_common_b_02_pant_ll', 'inv_pants_leather_40', @sound_leather_cloth);

-- Boots
CALL itemdisplayinfo_boots(@base_item_armor+20, '', '', '', '', 'leather_common_b_02_boot_ll', 'leather_common_b_02_boot_fo', 'inv_boots_leather_12', @sound_leather_cloth, 0);

/*
* Rogue
*/

-- Shoulders
CALL itemdisplayinfo_shoulders(@base_item_armor+21, 'lshoulder_leather_common_b_02.mdx', 'rshoulder_leather_common_b_02.mdx', 'leather_common_b_02_black', 'leather_common_b_02_black', 'inv_shoulder_139', @sound_leather_cloth);

-- Chest
call itemdisplayinfo_tunic(@base_item_armor+22, 'leather_common_b_02_black_sleeve_au', '', 'leather_common_b_02_black_chest_tu', 'leather_common_b_02_black_chest_tl', 'inv_chest_leather_28', @sound_leather_cloth, 0);

-- Bracers
CALL itemdisplayinfo_bracers(@base_item_armor+23, 'leather_common_b_02_black_bracer_al', 'inv_bracer_67', @sound_leather_cloth);

-- Gloves
CALL itemdisplayinfo_gloves(@base_item_armor+24, 'leather_common_b_02_black_glove_al', 'leather_common_b_02_black_glove_ha', 'inv_gauntlets_115', @sound_leather_cloth, 0);

-- Belt
CALL itemdisplayinfo_belt(@base_item_armor+25, 'leather_common_b_02_black_belt_lu', 'inv_belt_90', @sound_leather_cloth);

-- Legs
CALL itemdisplayinfo_legs(@base_item_armor+26, 'leather_common_b_02_black_pant_lu', 'leather_common_b_02_black_pant_ll', 'inv_pants_leather_40', @sound_leather_cloth);

-- Boots
CALL itemdisplayinfo_boots(@base_item_armor+27, '', '', '', '', 'leather_common_b_02_black_boot_ll', 'leather_common_b_02_black_boot_fo', 'inv_boots_leather_12', @sound_leather_cloth, 0);


/*
* Priest
*/

-- Shoulders
CALL itemdisplayinfo_shoulders(@base_item_armor+28, 'lshoulder_robe_c_03.mdx', 'rshoulder_robe_c_03.mdx', 'shoulder_robe_c_03black', 'shoulder_robe_c_03black', 'inv_shoulder_02', @sound_leather_cloth);

-- Chest
call itemdisplayinfo_tunic(@base_item_armor+29, 'robe_c_03black_sleeve_au', 'robe_c_03black_sleeve_al', 'robe_c_03black_chest_tu', 'robe_c_03black_chest_tl', 'inv_chest_cloth_29', @sound_leather_cloth, 1);

-- Bracers
CALL itemdisplayinfo_bracers(@base_item_armor+30, 'cloth_c_03blue_bracer_al', 'inv_bracer_13', @sound_leather_cloth);

-- Gloves
CALL itemdisplayinfo_gloves(@base_item_armor+31, 'cloth_horde_a_01blue_glove_al', 'cloth_horde_a_01blue_glove_ha', 'inv_gauntlets_18', @sound_leather_cloth, 0);

-- Belt
CALL itemdisplayinfo_belt(@base_item_armor+32, 'robe_c_03black_belt_lu', 'inv_belt_07', @sound_leather_cloth);

-- Legs
CALL itemdisplayinfo_legs_skirt(@base_item_armor+33, 'robe_c_03black_pant_lu', 'robe_c_03black_pant_ll', 'inv_pants_09', @sound_leather_cloth, 1);

-- Boots
CALL itemdisplayinfo_boots(@base_item_armor+34, '', '', '', '', 'robe_c_03black_boot_ll', 'robe_c_03black_boot_fo', 'inv_boots_09', @sound_leather_cloth, 0);

/*
* Shaman
*/

-- Shoulders
CALL itemdisplayinfo_shoulders(@base_item_armor+35, 'lshoulder_leather_common_b_02.mdx', 'rshoulder_leather_common_b_02.mdx', 'leather_common_b_02_brown', 'leather_common_b_02_brown', 'inv_shoulder_139', @sound_leather_cloth);

-- Chest
CALL itemdisplayinfo_tunic(@base_item_armor+36, 'leather_common_b_02_brown_sleeve_au', '', 'leather_common_b_02_brown_chest_tu', 'leather_common_b_02_brown_chest_tl', 'inv_chest_leather_28', @sound_leather_cloth, 0);

-- Bracers
CALL itemdisplayinfo_bracers(@base_item_armor+37, 'leather_common_b_02_brown_bracer_al', 'inv_bracer_67', @sound_leather_cloth);

-- Gloves
CALL itemdisplayinfo_gloves(@base_item_armor+38, 'leather_common_b_02_brown_glove_al', 'leather_common_b_02_brown_glove_ha', 'inv_gauntlets_115', @sound_leather_cloth, 0);

-- Belt
CALL itemdisplayinfo_belt(@base_item_armor+39, 'leather_common_b_02_brown_belt_lu', 'inv_belt_90', @sound_leather_cloth);

-- Legs
CALL itemdisplayinfo_legs(@base_item_armor+40, 'leather_common_b_02_brown_pant_lu', 'leather_common_b_02_brown_pant_ll', 'inv_pants_leather_40', @sound_leather_cloth);

-- Boots
CALL itemdisplayinfo_boots(@base_item_armor+41, '', '', '', '', 'leather_common_b_02_brown_boot_ll', 'leather_common_b_02_brown_boot_fo', 'inv_boots_leather_12', @sound_leather_cloth, 0);

/*
* Mage
*/

-- Shoulders
CALL itemdisplayinfo_shoulders(@base_item_armor+42, 'lshoulder_robe_c_03.mdx', 'rshoulder_robe_c_03.mdx', 'shoulder_robe_c_03blue', 'shoulder_robe_c_03blue', 'inv_shoulder_02', @sound_leather_cloth);

-- Chest
call itemdisplayinfo_tunic(@base_item_armor+43, 'robe_c_03blue_sleeve_au', 'robe_c_03blue_sleeve_al', 'robe_c_03blue_chest_tu', 'robe_c_03blue_chest_tl', 'inv_chest_cloth_29', @sound_leather_cloth, 1);

-- Bracers
CALL itemdisplayinfo_bracers(@base_item_armor+44, 'cloth_c_03blue_bracer_al', 'inv_bracer_13', @sound_leather_cloth);

-- Gloves
CALL itemdisplayinfo_gloves(@base_item_armor+45, 'cloth_horde_a_01red_glove_al', 'cloth_c_03red_glove_ha', 'inv_gauntlets_18', @sound_leather_cloth, 0);

-- Belt
CALL itemdisplayinfo_belt(@base_item_armor+46, 'robe_c_03blue_belt_lu', 'inv_belt_07', @sound_leather_cloth);

-- Legs
CALL itemdisplayinfo_legs_skirt(@base_item_armor+47, 'robe_c_03blue_pants_lu', 'robe_c_03blue_pant_ll', 'inv_pants_08', @sound_leather_cloth, 1);

-- Boots
CALL itemdisplayinfo_boots(@base_item_armor+48, '', '', '', '', 'robe_c_03blue_boot_ll', 'robe_c_03blue_boot_fo', 'inv_boots_09', @sound_leather_cloth, 0);

/*
* Warlock
*/

-- Shoulders
CALL itemdisplayinfo_shoulders(@base_item_armor+49, 'lshoulder_robe_c_03.mdx', 'rshoulder_robe_c_03.mdx', 'shoulder_robe_c_03blackblack', 'shoulder_robe_c_03blackblack', 'inv_shoulder_02', @sound_leather_cloth);

-- Chest
CALL itemdisplayinfo_tunic(@base_item_armor+50, 'robe_c_03blackblack_sleeve_au', 'robe_c_03blackblack_sleeve_al', 'robe_c_03blackblack_chest_tu', 'robe_c_03blackblack_chest_tl', 'inv_chest_cloth_29', @sound_leather_cloth, 1);

-- Bracers
CALL itemdisplayinfo_bracers(@base_item_armor+51, 'cloth_c_03blackblackbracer_al', 'inv_bracer_13', @sound_leather_cloth);

-- Gloves
CALL itemdisplayinfo_gloves(@base_item_armor+52, 'cloth_horde_a_01blue_glove_al', 'cloth_horde_a_01blue_glove_ha', 'inv_gauntlets_18', @sound_leather_cloth, 0);

-- Belt
CALL itemdisplayinfo_belt(@base_item_armor+53, 'robe_c_03blackblack_belt_lu', 'inv_belt_07', @sound_leather_cloth);

-- Legs
CALL itemdisplayinfo_legs_skirt(@base_item_armor+54, 'robe_c_03blackblack_pant_lu', 'robe_c_03blackblack_pant_ll', 'inv_pants_08', @sound_leather_cloth, 1);

-- Boots
CALL itemdisplayinfo_boots(@base_item_armor+55, '', '', '', '', 'robe_c_03blackblack_boot_ll', 'robe_c_03blackblack_boot_fo', 'inv_boots_09', @sound_leather_cloth, 0);

/*
* Druid
*/

-- Shoulders
CALL itemdisplayinfo_shoulders(@base_item_armor+56, 'lshoulder_leather_common_b_02.mdx', 'rshoulder_leather_common_b_02.mdx', 'leather_common_b_02_white', 'leather_common_b_02_white', 'inv_shoulder_139', @sound_leather_cloth);

-- Chest
CALL itemdisplayinfo_tunic(@base_item_armor+57, 'leather_common_b_02_white_sleeve_au', '', 'leather_common_b_02_white_chest_tu', 'leather_common_b_02_white_chest_tl', 'inv_chest_leather_28', @sound_leather_cloth, 0);

-- Bracers
CALL itemdisplayinfo_bracers(@base_item_armor+58, 'leather_common_b_02_white_bracer_al', 'inv_bracer_67', @sound_leather_cloth);

-- Gloves
CALL itemdisplayinfo_gloves(@base_item_armor+59, 'leather_common_b_02_white_glove_al', 'leather_common_b_02_white_glove_ha', 'inv_gauntlets_115', @sound_leather_cloth, 0);

-- Belt
CALL itemdisplayinfo_belt(@base_item_armor+60, 'leather_common_b_02_white_belt_lu', 'inv_belt_90', @sound_leather_cloth);

-- Legs
CALL itemdisplayinfo_legs(@base_item_armor+61, 'leather_common_b_02_white_pant_lu', 'leather_common_b_02_white_pant_ll', 'inv_pants_leather_40', @sound_leather_cloth);

-- Boots
CALL itemdisplayinfo_boots(@base_item_armor+62, '', '', '', '', 'leather_common_b_02_white_boot_ll', 'leather_common_b_02_white_boot_fo', 'inv_boots_leather_12', @sound_leather_cloth, 0);

/*
* Containers
*/

-- Warrior
CALL itemdisplayinfo_container(@base_item_container, 'class_icon_warrior', @sound_wood);
CALL itemdisplayinfo_container(@base_item_container+1, 'class_icon_warrior', @sound_wood);
CALL itemdisplayinfo_container(@base_item_container+2, 'class_icon_warrior', @sound_wood);

-- Paladin
CALL itemdisplayinfo_container(@base_item_container+3, 'class_icon_paladin', @sound_wood);

-- Hunter
CALL itemdisplayinfo_container(@base_item_container+4, 'class_icon_hunter', @sound_wood);
CALL itemdisplayinfo_container(@base_item_container+5, 'class_icon_hunter', @sound_wood);

-- Rogue
CALL itemdisplayinfo_container(@base_item_container+6, 'class_icon_rogue', @sound_wood);
CALL itemdisplayinfo_container(@base_item_container+7, 'class_icon_rogue', @sound_wood);
CALL itemdisplayinfo_container(@base_item_container+8, 'class_icon_rogue', @sound_wood);

-- Priest
CALL itemdisplayinfo_container(@base_item_container+9, 'class_icon_priest', @sound_wood);

-- Shaman
CALL itemdisplayinfo_container(@base_item_container+10, 'class_icon_shaman', @sound_wood);

-- Mage
CALL itemdisplayinfo_container(@base_item_container+11, 'class_icon_mage', @sound_wood);

-- Warlock
CALL itemdisplayinfo_container(@base_item_container+12, 'class_icon_warlock', @sound_wood);

-- Druid
CALL itemdisplayinfo_container(@base_item_container+13, 'class_icon_druid', @sound_wood);

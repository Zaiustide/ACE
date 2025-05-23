DELETE FROM `recipe` WHERE `id` = 8915;

INSERT INTO `recipe` (`id`, `unknown_1`, `skill`, `difficulty`, `salvage_Type`, `success_W_C_I_D`, `success_Amount`, `success_Message`, `fail_W_C_I_D`, `fail_Amount`, `fail_Message`, `success_Destroy_Source_Chance`, `success_Destroy_Source_Amount`, `success_Destroy_Source_Message`, `success_Destroy_Target_Chance`, `success_Destroy_Target_Amount`, `success_Destroy_Target_Message`, `fail_Destroy_Source_Chance`, `fail_Destroy_Source_Amount`, `fail_Destroy_Source_Message`, `fail_Destroy_Target_Chance`, `fail_Destroy_Target_Amount`, `fail_Destroy_Target_Message`, `data_Id`, `last_Modified`)
VALUES (8915, 0, 29 /* ArmorTinkering */, 400, 0, 0, 0, 'You successfully imbue the item with the magics of the empowered amber.', 0, 0, 'You fail to imbue the item, destroying it in the process!', 1, 1, NULL, 0, 0, NULL, 1, 1, NULL, 1, 1, NULL, 0, '2021-12-14 05:15:31');

INSERT INTO `recipe_requirements_int` (`recipe_Id`, `index`, `stat`, `value`, `enum`, `message`)
VALUES (8915, 0,   9, 512, 4, 'You can only apply this augmentaion to a breastplate-slot item!') /* Target.ValidLocations - ChestArmor NotEqual 512 */
     , (8915, 0, 379, 1, 3, 'This item has already been imbued!') /* Target.GearMaxHealth GreaterThanEqual 1 */;

INSERT INTO `recipe_mod` (`recipe_Id`, `executes_On_Success`, `health`, `stamina`, `mana`, `unknown_7`, `data_Id`, `unknown_9`, `instance_Id`)
VALUES (8915, True, 0, 0, 0, False, 0, 1, 0);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 379, 2, 1, 1) /* On Source.SuccessTarget SetValue GearMaxHealth 2 to Target */;

DELETE FROM `cook_book` WHERE `recipe_Id` = 8915;

INSERT INTO `cook_book` (`recipe_Id`, `source_W_C_I_D`, `target_W_C_I_D`, `last_Modified`)
VALUES (8915, 53067 /* Empowered Amber: Breastplate of Life */,    39 /* Leather Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,    40 /* Platemail Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,    41 /* Scalemail Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,    42 /* Studded Leather Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,    43 /* Yoroi Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,    47 /* Leather Coat */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,    48 /* Studded Leather Coat */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,    50 /* Leather Cuirass */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,    51 /* Platemail Cuirass */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,    52 /* Scalemail Cuirass */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,    53 /* Studded Leather Cuirass */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,    54 /* Yoroi Cuirass */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,    71 /* Chainmail Hauberk */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,    72 /* Platemail Hauberk */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,    73 /* Scalemail Hauberk */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,    96 /* Chainmail Shirt */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,    97 /* Leather Shirt */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,    98 /* Scalemail Shirt */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,    99 /* Studded Leather Shirt */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,   414 /* Chainmail Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,  6003 /* Koujia Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,  6044 /* Celdon Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */,  6046 /* Amuli Coat */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 21152 /* Covenant Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 24617 /* Fine Olthoi Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 24618 /* Good Olthoi Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 24891 /* Greater Olthoi Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 24892 /* Lesser Olthoi Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 24945 /* Antius' Celdon Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 25638 /* Leather Vest */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 25639 /* Leather Jerkin */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 25641 /* Leather Cuirass */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 25649 /* Leather Shirt */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 25653 /* Koujia Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 27215 /* Chiran Coat */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 27221 /* Lorica Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 27227 /* Nariyid Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 28628 /* Diforsa Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 28629 /* Alduressa Coat */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 28630 /* Diforsa Cuirass */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 30519 /* Gelidite Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 30520 /* Breastplate of Leikotha's Tears */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 30948 /* Diforsa Hauberk */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 31026 /* Tenassa Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 37214 /* Olthoi Celdon Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 37215 /* Olthoi Koujia Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 37216 /* Olthoi Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 37217 /* Olthoi Alduressa Coat */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 37299 /* Olthoi Amuli Coat */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 38463 /* Celestial Hand Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 38472 /* Eldrytch Web Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 38481 /* Radiant Blood Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 42749 /* Haebrean Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 43048 /* Knorr Academy Breastplate */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 43828 /* Sedgemail Leather Vest */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 44799 /* Faran Over-robe */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 44800 /* Dho Vest and Over-Robe */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 44801 /* Suikan Over-robe */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 44802 /* Vestiri Over-robe */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 44803 /* Empyrean Over-robe */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 30532 /* Dusk Coat */, '2021-12-14 05:15:31')
     , (8915, 53067 /* Empowered Amber: Breastplate of Life */, 30533 /* Patriarch's Twilight Coat */, '2021-12-14 05:15:31');
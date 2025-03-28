DELETE FROM `recipe` WHERE `id` = 8910;

INSERT INTO `recipe` (`id`, `unknown_1`, `skill`, `difficulty`, `salvage_Type`, `success_W_C_I_D`, `success_Amount`, `success_Message`, `fail_W_C_I_D`, `fail_Amount`, `fail_Message`, `success_Destroy_Source_Chance`, `success_Destroy_Source_Amount`, `success_Destroy_Source_Message`, `success_Destroy_Target_Chance`, `success_Destroy_Target_Amount`, `success_Destroy_Target_Message`, `fail_Destroy_Source_Chance`, `fail_Destroy_Source_Amount`, `fail_Destroy_Source_Message`, `fail_Destroy_Target_Chance`, `fail_Destroy_Target_Amount`, `fail_Destroy_Target_Message`, `data_Id`, `last_Modified`)
VALUES (8910, 0, 29 /* ArmorTinkering */, 400, 0, 0, 0, 'You successfully imbue the item with the magics of the luminous amber.', 0, 0, 'You fail to imbue the item, destroying it in the process!', 1, 1, NULL, 0, 0, NULL, 1, 1, NULL, 1, 1, NULL, 0, '2021-12-14 05:15:31');

INSERT INTO `recipe_requirements_int` (`recipe_Id`, `index`, `stat`, `value`, `enum`, `message`)
VALUES (8910, 0,   9, 512, 4, 'You can only apply this augmentaion to a breastplate-slot item!') /* Target.ValidLocations - ChestArmor NotEqual 512 */
     , (8910, 0, 371, 1, 3, 'This item has already been imbued!') /* Target.GearDamageResist GreaterThanEqual 1 */;

INSERT INTO `recipe_mod` (`recipe_Id`, `executes_On_Success`, `health`, `stamina`, `mana`, `unknown_7`, `data_Id`, `unknown_9`, `instance_Id`)
VALUES (8910, True, 0, 0, 0, False, 0, 1, 0);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `recipe_mods_int` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 0, 371, 1, 1, 1) /* On Source.SuccessTarget SetValue GearDamageResist 1 to Target */;

DELETE FROM `cook_book` WHERE `recipe_Id` = 8910;

INSERT INTO `cook_book` (`recipe_Id`, `source_W_C_I_D`, `target_W_C_I_D`, `last_Modified`)
VALUES (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,    39 /* Leather Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,    40 /* Platemail Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,    41 /* Scalemail Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,    42 /* Studded Leather Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,    43 /* Yoroi Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,    47 /* Leather Coat */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,    48 /* Studded Leather Coat */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,    50 /* Leather Cuirass */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,    51 /* Platemail Cuirass */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,    52 /* Scalemail Cuirass */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,    53 /* Studded Leather Cuirass */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,    54 /* Yoroi Cuirass */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,    71 /* Chainmail Hauberk */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,    72 /* Platemail Hauberk */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,    73 /* Scalemail Hauberk */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,    96 /* Chainmail Shirt */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,    97 /* Leather Shirt */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,    98 /* Scalemail Shirt */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,    99 /* Studded Leather Shirt */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,   414 /* Chainmail Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,  6003 /* Koujia Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,  6044 /* Celdon Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */,  6046 /* Amuli Coat */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 21152 /* Covenant Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 24617 /* Fine Olthoi Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 24618 /* Good Olthoi Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 24891 /* Greater Olthoi Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 24892 /* Lesser Olthoi Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 24945 /* Antius' Celdon Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 25638 /* Leather Vest */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 25639 /* Leather Jerkin */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 25641 /* Leather Cuirass */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 25649 /* Leather Shirt */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 25653 /* Koujia Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 27215 /* Chiran Coat */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 27221 /* Lorica Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 27227 /* Nariyid Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 28628 /* Diforsa Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 28629 /* Alduressa Coat */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 28630 /* Diforsa Cuirass */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 30519 /* Gelidite Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 30520 /* Breastplate of Leikotha's Tears */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 30948 /* Diforsa Hauberk */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 31026 /* Tenassa Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 37214 /* Olthoi Celdon Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 37215 /* Olthoi Koujia Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 37216 /* Olthoi Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 37217 /* Olthoi Alduressa Coat */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 37299 /* Olthoi Amuli Coat */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 38463 /* Celestial Hand Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 38472 /* Eldrytch Web Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 38481 /* Radiant Blood Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 42749 /* Haebrean Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 43048 /* Knorr Academy Breastplate */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 43828 /* Sedgemail Leather Vest */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 44799 /* Faran Over-robe */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 44800 /* Dho Vest and Over-Robe */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 44801 /* Suikan Over-robe */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 44802 /* Vestiri Over-robe */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 44803 /* Empyrean Over-robe */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 30532 /* Dusk Coat */, '2021-12-14 05:15:31')
     , (8910, 53297 /* Luminous Amber: Breastplate of the Bulwark */, 30533 /* Patriarch's Twilight Coat */, '2021-12-14 05:15:31');
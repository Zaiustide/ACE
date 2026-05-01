DELETE FROM `weenie` WHERE `class_Id` = 451601701;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451601701, 'ace451601701-Metos', 10, '2026-05-01 07:58:17') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451601701,   1,         16) /* ItemType - Creature */
     , (451601701,   2,         51) /* CreatureType - Empyrean */
     , (451601701,   3,          2) /* PaletteTemplate - Blue */
     , (451601701,   6,         -1) /* ItemsCapacity */
     , (451601701,   7,         -1) /* ContainersCapacity */
     , (451601701,  16,          1) /* ItemUseable - No */
     , (451601701,  25,        999) /* Level */
     , (451601701,  40,          1) /* CombatMode - NonCombat */
     , (451601701,  68,          3) /* TargetingTactic - Random, Focused */
     , (451601701,  81,          5) /* MaxGeneratedObjects */
     , (451601701,  82,          0) /* InitGeneratedObjects */
     , (451601701,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (451601701, 103,          2) /* GeneratorDestructionType - Destroy */
     , (451601701, 113,          1) /* Gender - Male */
     , (451601701, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (451601701, 145,          2) /* GeneratorEndDestructionType - Destroy */
     , (451601701, 146,  100000000) /* XpOverride */
     , (451601701, 188,         11) /* HeritageGroup - Undead */
     , (451601701, 307,        100) /* DamageRating */
     , (451601701, 308,         35) /* DamageResistRating */
     , (451601701, 332,     100000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451601701,   1, True ) /* Stuck */
     , (451601701,   6, False) /* AiUsesMana */
     , (451601701,  11, False) /* IgnoreCollisions */
     , (451601701,  12, True ) /* ReportCollisions */
     , (451601701,  13, False) /* Ethereal */
     , (451601701,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451601701,   1,       5) /* HeartbeatInterval */
     , (451601701,   2,       0) /* HeartbeatTimestamp */
     , (451601701,   3,     0.2) /* HealthRate */
     , (451601701,   4,     0.5) /* StaminaRate */
     , (451601701,   5,       2) /* ManaRate */
     , (451601701,  12,       0) /* Shade */
     , (451601701,  13,     0.6) /* ArmorModVsSlash */
     , (451601701,  14,    0.95) /* ArmorModVsPierce */
     , (451601701,  15,     0.6) /* ArmorModVsBludgeon */
     , (451601701,  16,    0.95) /* ArmorModVsCold */
     , (451601701,  17,    0.75) /* ArmorModVsFire */
     , (451601701,  18,     0.9) /* ArmorModVsAcid */
     , (451601701,  19,    0.95) /* ArmorModVsElectric */
     , (451601701,  31,      25) /* VisualAwarenessRange */
     , (451601701,  34,       2) /* PowerupTime */
     , (451601701,  36,       1) /* ChargeSpeed */
     , (451601701,  39,     1.2) /* DefaultScale */
     , (451601701,  64,    0.75) /* ResistSlash */
     , (451601701,  65,    0.75) /* ResistPierce */
     , (451601701,  66,     0.5) /* ResistBludgeon */
     , (451601701,  67,       1) /* ResistFire */
     , (451601701,  68,     0.5) /* ResistCold */
     , (451601701,  69,     0.5) /* ResistAcid */
     , (451601701,  70,     0.5) /* ResistElectric */
     , (451601701,  71,       1) /* ResistHealthBoost */
     , (451601701,  72,       1) /* ResistStaminaDrain */
     , (451601701,  73,       1) /* ResistStaminaBoost */
     , (451601701,  74,       1) /* ResistManaDrain */
     , (451601701,  75,       1) /* ResistManaBoost */
     , (451601701,  76,     0.6) /* Translucency */
     , (451601701,  80,       3) /* AiUseMagicDelay */
     , (451601701, 104,      10) /* ObviousRadarRange */
     , (451601701, 121,       1) /* GeneratorInitialDelay */
     , (451601701, 122,       2) /* AiAcquireHealth */
     , (451601701, 125,       1) /* ResistHealthDrain */
     , (451601701, 151,       1) /* IgnoreShield */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451601701,   1, 'Shade of Metos') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451601701,   1, 0x02001A16) /* Setup */
     , (451601701,   2, 0x09000207) /* MotionTable */
     , (451601701,   3, 0x20000001) /* SoundTable */
     , (451601701,   4, 0x30000000) /* CombatTable */
     , (451601701,   6, 0x0400007E) /* PaletteBase */
     , (451601701,   7, 0x100007BD) /* ClothingBase */
     , (451601701,   8, 0x060065D2) /* Icon */
     , (451601701,  22, 0x34000025) /* PhysicsEffectTable */
     , (451601701,  35,      10021) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (451601701,   1,1600, 0, 0) /* Strength */
     , (451601701,   2, 800, 0, 0) /* Endurance */
     , (451601701,   3, 900, 0, 0) /* Quickness */
     , (451601701,   4, 800, 0, 0) /* Coordination */
     , (451601701,   5, 800, 0, 0) /* Focus */
     , (451601701,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (451601701,   1,169600, 0, 0,170000) /* MaxHealth */
     , (451601701,   3, 89200, 0, 0,90000) /* MaxStamina */
     , (451601701,   5,199200, 0, 0,200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (451601701,  6, 0, 2, 0, 204, 0, 0) /* MeleeDefense             Trained */
     , (451601701,  7, 0, 3, 0, 440, 0, 0) /* MissileDefense       Specialized */
     , (451601701, 15, 0, 2, 0, 272, 0, 0) /* MagicDefense             Trained */
     , (451601701, 16, 0, 3, 0, 450, 0, 0) /* ManaConversion       Specialized */
     , (451601701, 31, 0, 3, 0, 450, 0, 0) /* CreatureEnchantment  Specialized */
     , (451601701, 33, 0, 3, 0, 300, 0, 0) /* LifeMagic            Specialized */
     , (451601701, 34, 0, 3, 0, 450, 0, 0) /* WarMagic             Specialized */
     , (451601701, 43, 0, 3, 0, 450, 0, 0) /* VoidMagic            Specialized */
     , (451601701, 44, 0, 3, 0, 600, 0, 0) /* HeavyWeapons         Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (451601701,  0,  4,  0,    0,  367,  220,  349,  220,  349,  367,  330,  349,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head - Bludgeon */
     , (451601701,  1,  4,  0,    0,  367,  220,  349,  220,  349,  367,  330,  349,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest - Bludgeon */
     , (451601701,  2,  4,  0,    0,  367,  220,  349,  220,  349,  367,  330,  349,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen - Bludgeon */
     , (451601701,  3,  4,  0,    0,  367,  220,  349,  220,  349,  367,  330,  349,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm - Bludgeon */
     , (451601701,  4,  4,  0,    0,  367,  220,  349,  220,  349,  367,  330,  349,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm - Bludgeon */
     , (451601701,  5,  4,800, 0.75,  367,  220,  349,  220,  349,  367,  330,  349,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand - Bludgeon */
     , (451601701,  6,  4,  0,    0,  367,  220,  349,  220,  349,  367,  330,  349,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg - Bludgeon */
     , (451601701,  7,  4,  0,    0,  367,  220,  349,  220,  349,  367,  330,  349,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg - Bludgeon */
     , (451601701,  8,  4,800, 0.75,  366,  220,  348,  220,  348,  366,  330,  348,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot - Bludgeon */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (451601701,  2042,   2.02) /* Demon's Tongues */
     , (451601701,  2710,   2.04) /* Volcanic Blast */
     , (451601701,  3110,   2.06) /* Sear Flesh */
     , (451601701,  3878,   2.06) /* Incendiary Strike */
     , (451601701,  3882,   2.06) /* Incendiary Ring */
     , (451601701,  3883,   2.06) /* Pyroclastic Explosion */
     , (451601701,  3908,   2.08) /* Mana Blast */
     , (451601701,  4438,   2.09) /* Incantation of Flame Blast */
     , (451601701,  4441,   2.09) /* Incantation of Flame Volley */
     , (451601701,  4481,   2.09) /* Incantation of Fire Vulnerability Other */
     , (451601701,  3905,   2.09) /* Essence's Fury */
     , (451601701,  4312,   2.09) /* Incantation of Imperil Other */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451601701, 16 /* KillTaunt */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'So fragile. Asheron always had a soft spot for you fleshy things.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451601701, 18 /* Scream */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 8 /* Say */, 0, 0, NULL, 'Golems, to me! Destroy these interlopers!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451601701, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 17 /* LocalBroadcast */, 0, 1, NULL, 'As the ghostly remnants of Metos fade into unbeing, a voice echos in your mind: "Tell Asheron his efforts are in vain. I have seen beyond this life and beyond portal space. These "lifestones" of his will not keep the void back forever. The stone and earth of this world will outlast us all."', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (451601701, 2, 35547,  0, 0,    0, False) /* Create Doom Hammer (35547) for Wield */
     , (451601701, 1,361842,  1, 0,    1, False) /* Create Spectral Heart of Metos (361842) for Contain */
     , (451601701, 1,361842,  1, 0,    1, False) /* Create Spectral Heart of Metos (361842) for Contain */
     , (451601701, 1,361842,  1, 0,    1, False) /* Create Spectral Heart of Metos (361842) for Contain */
     , (451601701, 1,361842,  1, 0,    1, False) /* Create Spectral Heart of Metos (361842) for Contain */
     , (451601701, 1,361842,  1, 0,    1, False) /* Create Spectral Heart of Metos (361842) for Contain */
     , (451601701, 1,361842,  1, 0,    1, False) /* Create Spectral Heart of Metos (361842) for Contain */
     , (451601701, 1,361842,  1, 0,    1, False) /* Create Spectral Heart of Metos (361842) for Contain */
     , (451601701, 1,361842,  1, 0,    1, False) /* Create Spectral Heart of Metos (361842) for Contain */
     , (451601701, 1,361842,  1, 0,    1, False) /* Create Spectral Heart of Metos (361842) for Contain */;


DELETE FROM `weenie` WHERE `class_Id` = 451601700;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451601700, 'T9_BSDHarbinger', 10, '2026-04-06 06:08:32') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451601700,   1,         16) /* ItemType - Creature */
     , (451601700,   2,         62) /* CreatureType - Elemental */
     , (451601700,   6,         -1) /* ItemsCapacity */
     , (451601700,   7,         -1) /* ContainersCapacity */
     , (451601700,  16,          1) /* ItemUseable - No */
     , (451601700,  25,        999) /* Level */
     , (451601700,  27,          0) /* ArmorType - None */
     , (451601700,  40,          1) /* CombatMode - NonCombat */
     , (451601700,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (451601700,  69,         30) /* CombatTactic - Focused, LastDamager, TopDamager, Weakest */
     , (451601700,  72,         62) /* FriendType - Elemental */
     , (451601700,  81,          1) /* MaxGeneratedObjects */
     , (451601700,  82,          0) /* InitGeneratedObjects */
     , (451601700,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (451601700, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (451601700, 103,          2) /* GeneratorDestructionType - Destroy */
     , (451601700, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (451601700, 146,  100000000) /* XpOverride */
     , (451601700, 307,         75) /* DamageRating */
     , (451601700, 308,         50) /* DamageResistRating */
     , (451601700, 332,     100000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451601700,   1, True ) /* Stuck */
     , (451601700,   6, True ) /* AiUsesMana */
     , (451601700,  11, False) /* IgnoreCollisions */
     , (451601700,  12, True ) /* ReportCollisions */
     , (451601700,  13, False) /* Ethereal */
     , (451601700,  29, True ) /* NoCorpse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451601700,   1,       5) /* HeartbeatInterval */
     , (451601700,   2,       0) /* HeartbeatTimestamp */
     , (451601700,   3,       0) /* HealthRate */
     , (451601700,   4,     200) /* StaminaRate */
     , (451601700,   5,     200) /* ManaRate */
     , (451601700,  13,       1) /* ArmorModVsSlash */
     , (451601700,  14,       1) /* ArmorModVsPierce */
     , (451601700,  15,       1) /* ArmorModVsBludgeon */
     , (451601700,  16,     100) /* ArmorModVsCold */
     , (451601700,  17,     100) /* ArmorModVsFire */
     , (451601700,  18,     100) /* ArmorModVsAcid */
     , (451601700,  19,     100) /* ArmorModVsElectric */
     , (451601700,  31,      20) /* VisualAwarenessRange */
     , (451601700,  34,       1) /* PowerupTime */
     , (451601700,  36,       1) /* ChargeSpeed */
     , (451601700,  39,       3) /* DefaultScale */
     , (451601700,  41,       0) /* RegenerationInterval */
     , (451601700,  43,      10) /* GeneratorRadius */
     , (451601700,  64,       1) /* ResistSlash */
     , (451601700,  65,       1) /* ResistPierce */
     , (451601700,  66,       1) /* ResistBludgeon */
     , (451601700,  67,       0) /* ResistFire */
     , (451601700,  68,       0) /* ResistCold */
     , (451601700,  69,       0) /* ResistAcid */
     , (451601700,  70,       0) /* ResistElectric */
     , (451601700,  71,       1) /* ResistHealthBoost */
     , (451601700,  72,       1) /* ResistStaminaDrain */
     , (451601700,  73,       1) /* ResistStaminaBoost */
     , (451601700,  74,       1) /* ResistManaDrain */
     , (451601700,  75,       1) /* ResistManaBoost */
     , (451601700,  80,       0) /* AiUseMagicDelay */
     , (451601700, 104,      10) /* ObviousRadarRange */
     , (451601700, 117,     0.7) /* FocusedProbability */
     , (451601700, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451601700,   1, 'Harbinger') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451601700,   1, 0x02001731) /* Setup */
     , (451601700,   2, 0x09000111) /* MotionTable */
     , (451601700,   3, 0x20000093) /* SoundTable */
     , (451601700,   4, 0x30000000) /* CombatTable */
     , (451601700,   7, 0x100003ED) /* ClothingBase */
     , (451601700,   8, 0x060027CB) /* Icon */
     , (451601700,  22, 0x34000063) /* PhysicsEffectTable */
     , (451601700,  31,      87777) /* LinkedPortalOne - Surface */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (451601700, 0, 0x0, 0, 0, 0, 0, 0, 0, 0) /**/
/* @teleloc 0x0 [0.000000 0.000000 0.000000] 0.000000 0.000000 0.000000 0.000000 */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (451601700,   1,1000, 0, 0) /* Strength */
     , (451601700,   2, 800, 0, 0) /* Endurance */
     , (451601700,   3, 800, 0, 0) /* Quickness */
     , (451601700,   4, 800, 0, 0) /* Coordination */
     , (451601700,   5, 800, 0, 0) /* Focus */
     , (451601700,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (451601700,   1,199600, 0, 0,200000) /* MaxHealth */
     , (451601700,   3, 89200, 0, 0,90000) /* MaxStamina */
     , (451601700,   5,199200, 0, 0,200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (451601700,  6, 0, 3, 0, 267, 0, 0) /* MeleeDefense         Specialized */
     , (451601700,  7, 0, 3, 0, 460, 0, 0) /* MissileDefense       Specialized */
     , (451601700, 15, 0, 3, 0, 272, 0, 0) /* MagicDefense         Specialized */
     , (451601700, 16, 0, 3, 0, 350, 0, 0) /* ManaConversion      Specialized */
     , (451601700, 22, 0, 3, 0, 100, 0, 0) /* Jump                Specialized */
     , (451601700, 24, 0, 3, 0, 100, 0, 0) /* Run                 Specialized */
     , (451601700, 31, 0, 3, 0, 250, 0, 0) /* CreatureEnchantment Specialized */
     , (451601700, 33, 0, 3, 0, 250, 0, 0) /* LifeMagic           Specialized */
     , (451601700, 34, 0, 3, 0,1100, 0, 0) /* WarMagic             Specialized */
     , (451601700, 45, 0, 3, 0, 700, 0, 0) /* LightWeapons         Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (451601700,  0,  4,  0,    0,  297,  297,  297,  297,29700,29700,29700,29700,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head - Bludgeon */
     , (451601700,  1,  4,  0,    0,  297,  297,  297,  297,29700,29700,29700,29700,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest - Bludgeon */
     , (451601700,  2,  4,  0,    0,  297,  297,  297,  297,29700,29700,29700,29700,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen - Bludgeon */
     , (451601700,  3,  4,  0,    0,  297,  297,  297,  297,29700,29700,29700,29700,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm - Bludgeon */
     , (451601700,  4,  4,  0,    0,  297,  297,  297,  297,29700,29700,29700,29700,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm - Bludgeon */
     , (451601700,  5,  4,400, 0.75,  297,  297,  297,  297,29700,29700,29700,29700,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand - Bludgeon */
     , (451601700,  6,  4,  0,    0,  297,  297,  297,  297,29700,29700,29700,29700,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg - Bludgeon */
     , (451601700,  7,  4,  0,    0,  297,  297,  297,  297,29700,29700,29700,29700,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg - Bludgeon */
     , (451601700,  8,  4,400, 0.75,  297,  297,  297,  297,29700,29700,29700,29700,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot - Bludgeon */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (451601700,  2788,   2.01) /* Essence Blight */
     , (451601700,  2996,   2.01) /* Scourge */
     , (451601700,  3928,   2.01) /* Disarmament */
     , (451601700,  2029,   2.01) /* Stamina Blight */
     , (451601700,  3883,   2.02) /* Pyroclastic Explosion */
     , (451601700,  3041,   2.02) /* Essence Dissolution */
     , (451601700,  3460,   2.02) /* Dissolving Vortex */
     , (451601700,  3462,   2.02) /* Canker Flesh */
     , (451601700,  3463,   2.02) /* Char Flesh */
     , (451601700,  3464,   2.02) /* Numb Flesh */
     , (451601700,  3916,   2.02) /* Flayed Flesh */
     , (451601700,  3927,   2.02) /* Charge Flesh */
     , (451601700,  3904,   2.01) /* Essence's Fury */
     , (451601700,  3905,   2.01) /* Essence's Fury */
     , (451601700,  3906,   2.01) /* Essence's Fury */
     , (451601700,  3907,   2.01) /* Essence's Fury */
     , (451601700,  3951,   2.02) /* Lightning Wave */
     , (451601700,  3946,   2.02) /* Acid Wave */
     , (451601700,  3950,   2.02) /* Frost Wave */
     , (451601700,  3948,   2.02) /* Flame Wave */
     , (451601700,  3880,   2.02) /* Galvanic Strike */
     , (451601700,  3877,   2.02) /* Corrosive Strike */
     , (451601700,  3879,   2.02) /* Glacial Strike */
     , (451601700,  3878,   2.02) /* Incendiary Strike */
     , (451601700,  3885,   2.02) /* Galvanic Ring */
     , (451601700,  3881,   2.02) /* Corrosive Ring */
     , (451601700,  3884,   2.02) /* Glacial Ring */
     , (451601700,  3882,   2.02) /* Incendiary Ring */
     , (451601700,  3910,   2.01) /* Brain Freeze */
     , (451601700,  3870,  2.005) /* Syphon Creature Essence */
     , (451601700,  3871,  2.005) /* Syphon Item Essence */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451601700, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 17 /* LocalBroadcast */, 0, 1, NULL, 'The Harbinger''s death cry shakes the walls of the chamber, threatening to cave it in.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 17 /* LocalBroadcast */, 1, 1, NULL, '%tn has temporarily driven the Harbinger from this plane.  As the eldritch being dissolves into prismatic energy, you see a vision of a world enveloped by an alien light.  Its landscape shimmers with impossible colors.  Everything living looks wrong, growing in fractalized dimensions and malformed by cancerous growths like a hundred nascent eyes.  You realize this world is Auberean, your home.  Suddenly, the omen fades, and you struggle to keep your mind from breaking.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451601700, 14 /* Taunt */, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 17 /* LocalBroadcast */, 0, 1, NULL, 'The Harbinger turns its alien gaze towards you. In its eyes, you see an endless expanse of elemental energy, threatening to overwhelm you.  You summon all of your will and manage to avert your eyes before it draws you in.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451601700, 14 /* Taunt */, 0.05, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 17 /* LocalBroadcast */, 0, 1, NULL, 'The Harbinger unleashes a blast of prismatic energy at %s. You sense something like amusement ripple across its face, just as quickly replaced by an unfeeling stare.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451601700, 15 /* WoundedTaunt */, 1, NULL, NULL, NULL, NULL, NULL, 0.24, 0.27);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 72 /* Generate */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451601700, 15 /* WoundedTaunt */, 1, NULL, NULL, NULL, NULL, NULL, 0.74, 0.77);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 72 /* Generate */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451601700, 15 /* WoundedTaunt */, 1, NULL, NULL, NULL, NULL, NULL, 0.97, 1);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 72 /* Generate */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451601700, 16 /* KillTaunt */, 0.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'Inhuman eyes stare at you from the blackness. An impossibly cold hand grips your heart and squeezes. Your being fills with pain, there is nothing else. Suddenly it stops and you are falling toward your lifestone.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451601700, 9 /* Generation */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 17 /* LocalBroadcast */, 0, 1, NULL, 'The air around you grows heavy with electricity, and you feel a sharp pressure building at the front of your skull.  It grows until it becomes unbearable, like an ice pick driving deeper into your brain.  You are vaguely aware of fingers digging into your eye sockets as if attempting to tear out the foreign object.  Suddenly, the pain dissipates and relief courses through your being.  Your hands fall away from your face.  All that''s left is a dim awareness of an alien presence, so alien you''re not sure it''s alive.  You feel drawn to it.  It wants to speak to you.  You''re not sure you want to listen.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (451601700, 9,361841,  1, 0,    1, False) /* Create Prismatic Harbinger Blood (361841) for ContainTreasure */
     , (451601700, 9,361841,  1, 0,    1, False) /* Create Prismatic Harbinger Blood (361841) for ContainTreasure */
     , (451601700, 9,361841,  1, 0,    1, False) /* Create Prismatic Harbinger Blood (361841) for ContainTreasure */
     , (451601700, 9,361841,  1, 0,    1, False) /* Create Prismatic Harbinger Blood (361841) for ContainTreasure */
     , (451601700, 9,361841,  1, 0,    1, False) /* Create Prismatic Harbinger Blood (361841) for ContainTreasure */
     , (451601700, 9,361841,  1, 0,    1, False) /* Create Prismatic Harbinger Blood (361841) for ContainTreasure */
     , (451601700, 9,361841,  1, 0,    1, False) /* Create Prismatic Harbinger Blood (361841) for ContainTreasure */
     , (451601700, 9,361841,  1, 0,    1, False) /* Create Prismatic Harbinger Blood (361841) for ContainTreasure */
     , (451601700, 9,361841,  1, 0,    1, False) /* Create Prismatic Harbinger Blood (361841) for ContainTreasure */;


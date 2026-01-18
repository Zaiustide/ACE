DELETE FROM `weenie` WHERE `class_Id` = 451610942;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451610942, 'T9_humanchampionsword-xp', 10, '2005-02-09 10:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451610942,   1,         16) /* ItemType - Creature */
     , (451610942,   2,         31) /* CreatureType - Human */
     , (451610942,   6,         -1) /* ItemsCapacity */
     , (451610942,   7,         -1) /* ContainersCapacity */
     , (451610942,   8,        120) /* Mass */
     , (451610942,  16,          1) /* ItemUseable - No */
     , (451610942,  25,        120) /* Level */
     , (451610942,  27,          0) /* ArmorType - None */
     , (451610942,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
	 , (451610942,  81,          1) /* MaxGeneratedObjects */
     , (451610942,  82,          1) /* InitGeneratedObjects */
     , (451610942,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (451610942, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (451610942, 133,          2) /* ShowableOnRadar - ShowMovement */
	 , (451610942, 307,        225) /* DamageRating */
	 , (451610942, 308,          3) /* DamageResistRating */
	 , (451610942, 332,     100000) /* LuminanceAward */
     , (451610942, 146,  250000000) /* XpOverride */
	 , (451610942, 386,         15) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451610942,   1, True ) /* Stuck */
     , (451610942,  11, False) /* IgnoreCollisions */
     , (451610942,  12, True ) /* ReportCollisions */
     , (451610942,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451610942,   1,       5) /* HeartbeatInterval */
     , (451610942,   2,       0) /* HeartbeatTimestamp */
     , (451610942,   3,    0.16) /* HealthRate */
     , (451610942,   4,       5) /* StaminaRate */
     , (451610942,   5,       1) /* ManaRate */
     , (451610942,  13,     0.9) /* ArmorModVsSlash */
     , (451610942,  14,       1) /* ArmorModVsPierce */
     , (451610942,  15,     1.1) /* ArmorModVsBludgeon */
     , (451610942,  16,     0.4) /* ArmorModVsCold */
     , (451610942,  17,     0.4) /* ArmorModVsFire */
     , (451610942,  18,       1) /* ArmorModVsAcid */
     , (451610942,  19,     0.6) /* ArmorModVsElectric */
     , (451610942,  31,      13) /* VisualAwarenessRange */
	 , (451610942,  43,      12) /* GeneratorRadius */
     , (451610942,  64,    0.35) /* ResistSlash */
     , (451610942,  65,    0.35) /* ResistPierce */
     , (451610942,  66,    0.35) /* ResistBludgeon */
     , (451610942,  67,    0.35) /* ResistFire */
     , (451610942,  68,    0.35) /* ResistCold */
     , (451610942,  69,    0.35) /* ResistAcid */
     , (451610942,  70,    0.35) /* ResistElectric */
     , (451610942,  71,       1) /* ResistHealthBoost */
     , (451610942,  72,       1) /* ResistStaminaDrain */
     , (451610942,  73,       1) /* ResistStaminaBoost */
     , (451610942,  74,       1) /* ResistManaDrain */
     , (451610942,  75,       1) /* ResistManaBoost */
     , (451610942, 104,      10) /* ObviousRadarRange */
     , (451610942, 117,     0.5) /* FocusedProbability */
     , (451610942, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451610942,   1, 'Adroth Salson') /* Name */
     , (451610942,   3, 'Male') /* Sex */
     , (451610942,   4, 'Aluvian') /* HeritageGroup */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451610942,   1, 0x02000001) /* Setup */
     , (451610942,   2, 0x09000001) /* MotionTable */
     , (451610942,   3, 0x20000001) /* SoundTable */
     , (451610942,   4, 0x30000000) /* CombatTable */
     , (451610942,   8, 0x06001036) /* Icon */
     , (451610942,  22, 0x34000004) /* PhysicsEffectTable */
     , (451610942,  32,        30002) /* WieldedTreasureType */
     , (451610942,  35,        10023) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (451610942,   1, 1960, 0, 0) /* Strength */
     , (451610942,   2, 960, 0, 0) /* Endurance */
     , (451610942,   3, 1960, 0, 0) /* Quickness */
     , (451610942,   4, 1960, 0, 0) /* Coordination */
     , (451610942,   5,  80, 0, 0) /* Focus */
     , (451610942,   6,  80, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (451610942,   1,   48000, 0, 0, 48000) /* MaxHealth */
     , (451610942,   3,   500, 0, 0, 500) /* MaxStamina */
     , (451610942,   5,     0, 0, 0, 80) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (451610942,  6, 0, 3, 0, 0, 0, 705.7668485297244) /* MeleeDefense        Specialized */
     , (451610942,  7, 0, 3, 0, 0, 0, 705.7668485297244) /* MissileDefense      Specialized */
     , (451610942, 11, 0, 3, 0, 1870, 0, 705.7668485297244) /* Sword               Specialized */
     , (451610942, 14, 0, 3, 0, 250, 0, 705.7668485297244) /* ArcaneLore          Specialized */
     , (451610942, 15, 0, 3, 0, 420, 0, 705.7668485297244) /* MagicDefense        Specialized */
     , (451610942, 20, 0, 3, 0, 150, 0, 705.7668485297244) /* Deception           Specialized */
     , (451610942, 24, 0, 3, 0, 920, 0, 705.7668485297244) /* Run                 Specialized */
	 , (451610942, 44, 0, 3, 0, 1920, 0, 705.7668485297244) /* HW                 Specialized */
	 , (451610942, 45, 0, 3, 0, 1920, 0, 705.7668485297244) /* LW                 Specialized */
	 , (451610942, 46, 0, 3, 0, 1920, 0, 705.7668485297244) /* FW                 Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (451610942,  0,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (451610942,  1,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (451610942,  2,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (451610942,  3,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (451610942,  4,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (451610942,  5,  4,  2, 0.75,  225,  203,  225,  248,   90,   90,  225,  135,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (451610942,  6,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (451610942,  7,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (451610942,  8,  4,  2, 0.75,  225,  203,  225,  248,   90,   90,  225,  135,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (451610942,  94)
     , (451610942, 414);
	 
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (451610942, 9, 1548801,  1, 0,  0.02, False) /* 1548801 Potion of Resistance */
     , (451610942, 9,      0,  0, 0,   0.98, False)    /* Create nothing for ContainTreasure */
	 , (451610942, 9, 490248,  0, 0,   0.15, False) /* 4200028 Set Randomizer Morph Gem */
	 , (451610942, 9,      0,  0, 0,   0.85, False)    /* Create nothing for ContainTreasure */
	 , (451610942, 9, 600032,  1, 0, 0.0125, False) /* Empyrean Tailoring Scissors */
	 , (451610942, 9, 600035,  1, 0, 0.0125, False) /* 600035 Durable Empyrean Forging Hammer */
	 , (451610942, 9, 600034,  1, 0, 0.0125, False) /* 600034 Gem of Damage Protection */
	 , (451610942, 9, 600033,  1, 0, 0.0125, False) /* 600033 Gem of Damage Enhancement */ 
	 , (451610942, 9,      0,  0, 0,   0.95, False)    /* Create nothing for ContainTreasure */
	 , (451610942, 9, 1548806,  1, 0,  0.05, False) /* 1548806 Rare Damage Reduction Morph Gem */
	 , (451610942, 9, 1548805,  1, 0,  0.05, False) /* 1548805 Rare Damage Boost Morph Gem */ 
	 , (451610942, 9,      0,  0, 0,    0.9, False)    /* Create nothing for ContainTreasure */
	 , (451610942, 9, 490273,  1, 0,   0.05, False) /* 490273 Rare Gem of Critical Damage Reduction */
	 , (451610942, 9, 490272,  1, 0,   0.05, False) /* 490272 Rare Gem of Critical Damage */ 
	 , (451610942, 9,      0,  0, 0,    0.9, False)    /* Create nothing for ContainTreasure */
	 , (451610942, 9, 41541202,  1, 0, 0.15, False) /* 41541202 Paragon Legendary Quest Gem */ 
	 , (451610942, 9,      0,  0, 0,   0.85, False)    /* Create nothing for ContainTreasure */
	 , (451610942, 9,   600058,  1, 0, 0.2, False) /* 600058 Oil of the Elements Gem */ 
	 , (451610942, 9,      0,  0, 0,   0.8, False)    /* Create nothing for ContainTreasure */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (451610942, -1, 451610943, 0, 1, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) /* Den-Ru Chang (451610943) */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610942,  9 /* Generate */,  1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  72 /* Generate */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610942,  3 /* Death */,    0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, 'Adroth spits blood and teeth upon the ground, and grins a gap-toothed, bloodstained smile at %s. "If yer not carrying a full pack of vitae, yer not a real man. Roight then. I''ll be back for you, bub. Ye''ll get yers soon enough." The wicked gleam in his eyes fades as his spirit is whisked away to the lifestone.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610942,  9 /* Generation */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, 'You hear the clanking of heavy boots nearby.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610942, 14 /* Taunt */,   0.05, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, 'Adroth''s boots clank loudly as he lunges at %s!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610942, 16 /* KillTaunt */,    0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, 'Adroth grins down at %s''s corpse. "Kiss them boots while yer down there, kid."', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610942, 17 /* NewEnemy */,    0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, 'Adroth spits on the ground as he sizes up %s. "Dunno how yeh found us, mate. Seems like the longer we all stay in this world, the more we get a sixth sense for danger, eh? Anyway. Time to pay yer toll."', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610942, 17 /* NewEnemy */,    0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, 'Adroth spits on the ground as he sizes up %s. "Roight. Stand and deliver."', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610942, 18 /* Scream */,    0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, '"C''mon yeh dumb bastards, fight like a team!" Adroth bellows over the clash of battle.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

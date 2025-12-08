DELETE FROM `weenie` WHERE `class_Id` = 451610940;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451610940, 'T9_humanchampiondagger-xp', 10, '2005-02-09 10:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451610940,   1,         16) /* ItemType - Creature */
     , (451610940,   2,         31) /* CreatureType - Human */
     , (451610940,   6,         -1) /* ItemsCapacity */
     , (451610940,   7,         -1) /* ContainersCapacity */
     , (451610940,   8,        120) /* Mass */
     , (451610940,  16,          1) /* ItemUseable - No */
     , (451610940,  25,        120) /* Level */
     , (451610940,  27,          0) /* ArmorType - None */
     , (451610940,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
	 , (451610940,  81,          1) /* MaxGeneratedObjects */
     , (451610940,  82,          1) /* InitGeneratedObjects */
     , (451610940,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (451610940, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (451610940, 133,          2) /* ShowableOnRadar - ShowMovement */
	 , (451610940, 307,        1250) /* DamageRating */
	 , (451610940, 308,          6) /* DamageResistRating */
	 , (451610940, 332,     100000) /* LuminanceAward */
     , (451610940, 146,  250000000) /* XpOverride */
	 , (451610940, 386,         15) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451610940,   1, True ) /* Stuck */
     , (451610940,  11, False) /* IgnoreCollisions */
     , (451610940,  12, True ) /* ReportCollisions */
     , (451610940,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451610940,   1,       5) /* HeartbeatInterval */
     , (451610940,   2,       0) /* HeartbeatTimestamp */
     , (451610940,   3,    0.16) /* HealthRate */
     , (451610940,   4,       5) /* StaminaRate */
     , (451610940,   5,       1) /* ManaRate */
     , (451610940,  13,     0.9) /* ArmorModVsSlash */
     , (451610940,  14,       1) /* ArmorModVsPierce */
     , (451610940,  15,     1.1) /* ArmorModVsBludgeon */
     , (451610940,  16,     0.4) /* ArmorModVsCold */
     , (451610940,  17,     0.4) /* ArmorModVsFire */
     , (451610940,  18,       1) /* ArmorModVsAcid */
     , (451610940,  19,     0.6) /* ArmorModVsElectric */
     , (451610940,  31,      13) /* VisualAwarenessRange */
	 , (451610940,  43,       6) /* GeneratorRadius */
     , (451610940,  64,    0.35) /* ResistSlash */
     , (451610940,  65,    0.35) /* ResistPierce */
     , (451610940,  66,    0.35) /* ResistBludgeon */
     , (451610940,  67,    0.35) /* ResistFire */
     , (451610940,  68,    0.35) /* ResistCold */
     , (451610940,  69,    0.35) /* ResistAcid */
     , (451610940,  70,    0.35) /* ResistElectric */
     , (451610940,  71,       1) /* ResistHealthBoost */
     , (451610940,  72,       1) /* ResistStaminaDrain */
     , (451610940,  73,       1) /* ResistStaminaBoost */
     , (451610940,  74,       1) /* ResistManaDrain */
     , (451610940,  75,       1) /* ResistManaBoost */
     , (451610940, 104,      10) /* ObviousRadarRange */
     , (451610940, 117,     0.5) /* FocusedProbability */
     , (451610940, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451610940,   1, 'Itala the Knife') /* Name */
     , (451610940,   3, 'Female') /* Sex */
     , (451610940,   4, 'Sho') /* HeritageGroup */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451610940,   1, 0x0200004E) /* Setup */
     , (451610940,   2, 0x09000001) /* MotionTable */
     , (451610940,   3, 0x20000002) /* SoundTable */
     , (451610940,   4, 0x30000000) /* CombatTable */
     , (451610940,   8, 0x06001036) /* Icon */
     , (451610940,  22, 0x34000004) /* PhysicsEffectTable */
     , (451610940,  32,        30001) /* WieldedTreasureType */
     , (451610940,  35,        10023) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (451610940,   1,  250, 0, 0) /* Strength */
     , (451610940,   2,   890, 0, 0) /* Endurance */
     , (451610940,   3,   650, 0, 0) /* Quickness */
     , (451610940,   4,   950, 0, 0) /* Coordination */
     , (451610940,   5,  80, 0, 0) /* Focus */
     , (451610940,   6,  80, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (451610940,   1,   45020, 0, 0, 45020) /* MaxHealth */
     , (451610940,   3,   1300, 0, 0, 1300) /* MaxStamina */
     , (451610940,   5,     80, 0, 0, 80) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (451610940,  4, 0, 3, 0, 1030, 0, 705.6131132013226) /* Dagger              Specialized */
     , (451610940,  6, 0, 3, 0,   0, 0, 705.6131132013226) /* MeleeDefense        Specialized */
     , (451610940,  7, 0, 3, 0,   0, 0, 705.6131132013226) /* MissileDefense      Specialized */
     , (451610940, 14, 0, 3, 0, 250, 0, 705.6131132013226) /* ArcaneLore          Specialized */
     , (451610940, 15, 0, 3, 0, 450, 0, 705.6131132013226) /* MagicDefense        Specialized */
     , (451610940, 20, 0, 3, 0, 150, 0, 705.6131132013226) /* Deception           Specialized */
     , (451610940, 24, 0, 3, 0, 720, 0, 705.6131132013226) /* Run                 Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (451610940,  0,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (451610940,  1,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (451610940,  2,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (451610940,  3,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (451610940,  4,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (451610940,  5,  4,  2, 0.75,  225,  203,  225,  248,   90,   90,  225,  135,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (451610940,  6,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (451610940,  7,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (451610940,  8,  4,  2, 0.75,  225,  203,  225,  248,   90,   90,  225,  135,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (451610940,  94)
     , (451610940, 414);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (451610940, 9, 1548801,  1, 0,  0.02, False) /* 1548801 Potion of Resistance */
     , (451610940, 9,      0,  0, 0,   0.98, False)    /* Create nothing for ContainTreasure */
	 , (451610940, 9, 490248,  0, 0,   0.15, False) /* 4200028 Set Randomizer Morph Gem */
	 , (451610940, 9,      0,  0, 0,   0.85, False)    /* Create nothing for ContainTreasure */
	 , (451610940, 9, 600032,  1, 0, 0.0125, False) /* Empyrean Tailoring Scissors */
	 , (451610940, 9, 600035,  1, 0, 0.0125, False) /* 600035 Durable Empyrean Forging Hammer */
	 , (451610940, 9, 600034,  1, 0, 0.0125, False) /* 600034 Gem of Damage Protection */
	 , (451610940, 9, 600033,  1, 0, 0.0125, False) /* 600033 Gem of Damage Enhancement */ 
	 , (451610940, 9,      0,  0, 0,   0.95, False)    /* Create nothing for ContainTreasure */
	 , (451610940, 9, 1548806,  1, 0,  0.05, False) /* 1548806 Rare Damage Reduction Morph Gem */
	 , (451610940, 9, 1548805,  1, 0,  0.05, False) /* 1548805 Rare Damage Boost Morph Gem */ 
	 , (451610940, 9,      0,  0, 0,    0.9, False)    /* Create nothing for ContainTreasure */
	 , (451610940, 9, 490273,  1, 0,   0.05, False) /* 490273 Rare Gem of Critical Damage Reduction */
	 , (451610940, 9, 490272,  1, 0,   0.05, False) /* 490272 Rare Gem of Critical Damage */ 
	 , (451610940, 9,      0,  0, 0,    0.9, False)    /* Create nothing for ContainTreasure */
	 , (451610940, 9, 41541202,  1, 0, 0.15, False) /* 41541202 Paragon Legendary Quest Gem */ 
	 , (451610940, 9,      0,  0, 0,   0.85, False)    /* Create nothing for ContainTreasure */
	 , (451610940, 9,   600058,  1, 0, 0.2, False) /* 600058 Oil of the Elements Gem */ 
	 , (451610940, 9,      0,  0, 0,   0.8, False)    /* Create nothing for ContainTreasure */;	
	
INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610940,  9 /* Generate */,  1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  72 /* Generate */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

	 
INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (451610940, -1, 451610941, 0, 1, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) /* Torgrym the Magnificent (451610941) */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610940,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, 'Itala falls before %s''s assault as she fought, silently.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610940, 17 /* NewEnemy */,    0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, 'Itala glances at Adroth and murmurs, "I told you those boots of yours would give away our position."', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610940, 20 /* ReceiveCritical */,    0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, 'Itala winces as she receives %s''s telling blow!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

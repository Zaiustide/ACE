DELETE FROM `weenie` WHERE `class_Id` = 451610941;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451610941, 'T9_humanchampionog-xp', 10, '2005-02-09 10:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451610941,   1,         16) /* ItemType - Creature */
     , (451610941,   2,         31) /* CreatureType - Human */
     , (451610941,   6,         -1) /* ItemsCapacity */
     , (451610941,   7,         -1) /* ContainersCapacity */
     , (451610941,   8,        120) /* Mass */
     , (451610941,  16,          1) /* ItemUseable - No */
     , (451610941,  25,        120) /* Level */
     , (451610941,  27,          0) /* ArmorType - None */
     , (451610941,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
	 , (451610941,  81,          1) /* MaxGeneratedObjects */
     , (451610941,  82,          1) /* InitGeneratedObjects */
     , (451610941,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (451610941, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (451610941, 133,          2) /* ShowableOnRadar - ShowMovement */
	 , (451610941, 307,        415) /* DamageRating */
	 , (451610941, 308,          8) /* DamageResistRating */
	 , (451610941, 332,     100000) /* LuminanceAward */
     , (451610941, 146,  250000000) /* XpOverride */
	 , (451610941, 386,         15) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451610941,   1, True ) /* Stuck */
     , (451610941,  11, False) /* IgnoreCollisions */
     , (451610941,  12, True ) /* ReportCollisions */
     , (451610941,  13, False) /* Ethereal */
     , (451610941,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451610941,   1,       5) /* HeartbeatInterval */
     , (451610941,   2,       0) /* HeartbeatTimestamp */
     , (451610941,   3,    0.16) /* HealthRate */
     , (451610941,   4,       5) /* StaminaRate */
     , (451610941,   5,       1) /* ManaRate */
     , (451610941,  13,     0.9) /* ArmorModVsSlash */
     , (451610941,  14,       1) /* ArmorModVsPierce */
     , (451610941,  15,     1.1) /* ArmorModVsBludgeon */
     , (451610941,  16,     0.4) /* ArmorModVsCold */
     , (451610941,  17,     0.4) /* ArmorModVsFire */
     , (451610941,  18,       1) /* ArmorModVsAcid */
     , (451610941,  19,     0.6) /* ArmorModVsElectric */
     , (451610941,  31,      14) /* VisualAwarenessRange */
	 , (451610941,  43,      12) /* GeneratorRadius */
     , (451610941,  64,    0.35) /* ResistSlash */
     , (451610941,  65,    0.35) /* ResistPierce */
     , (451610941,  66,    0.35) /* ResistBludgeon */
     , (451610941,  67,    0.35) /* ResistFire */
     , (451610941,  68,    0.35) /* ResistCold */
     , (451610941,  69,    0.35) /* ResistAcid */
     , (451610941,  70,    0.35) /* ResistElectric */
     , (451610941,  71,       1) /* ResistHealthBoost */
     , (451610941,  72,       1) /* ResistStaminaDrain */
     , (451610941,  73,       1) /* ResistStaminaBoost */
     , (451610941,  74,       1) /* ResistManaDrain */
     , (451610941,  75,       1) /* ResistManaBoost */
     , (451610941, 104,      10) /* ObviousRadarRange */
     , (451610941, 117,     0.5) /* FocusedProbability */
     , (451610941, 122,       2) /* AiAcquireHealth */
     , (451610941, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451610941,   1, 'Torgrym the Magnificent') /* Name */
     , (451610941,   3, 'Male') /* Sex */
     , (451610941,   4, 'Aluvian') /* HeritageGroup */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451610941,   1, 0x02000001) /* Setup */
     , (451610941,   2, 0x09000001) /* MotionTable */
     , (451610941,   3, 0x20000001) /* SoundTable */
     , (451610941,   4, 0x30000000) /* CombatTable */
     , (451610941,   8, 0x06001036) /* Icon */
     , (451610941,  22, 0x34000004) /* PhysicsEffectTable */
     , (451610941,  32,        430) /* WieldedTreasureType */
     , (451610941,  35,        10023) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (451610941,   1, 2800, 0, 0) /* Strength */
     , (451610941,   2, 850, 0, 0) /* Endurance */
     , (451610941,   3,  1800, 0, 0) /* Quickness */
     , (451610941,   4,  1800, 0, 0) /* Coordination */
     , (451610941,   5, 1960, 0, 0) /* Focus */
     , (451610941,   6, 960, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (451610941,   1,   61500, 0, 0, 61500) /* MaxHealth */
     , (451610941,   3,   900, 0, 0, 900) /* MaxStamina */
     , (451610941,   5,   390, 0, 0, 390) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (451610941,  2, 0, 3, 0,   1450, 0, 705.6901924444477) /* Bow                 Specialized */
     , (451610941,  4, 0, 3, 0,   1650, 0, 705.6901924444477) /* Dagger              Specialized */
     , (451610941,  6, 0, 3, 0,     1, 0, 705.6901924444477) /* MeleeDefense        Specialized */
     , (451610941,  7, 0, 3, 0,     1, 0, 705.6901924444477) /* MissileDefense      Specialized */
     , (451610941, 11, 0, 3, 0,  1450, 0, 705.6901924444477) /* Sword               Specialized */
     , (451610941, 14, 0, 3, 0, 250, 0, 705.6901924444477) /* ArcaneLore          Specialized */
     , (451610941, 15, 0, 3, 0,  1, 0, 705.6901924444477) /* MagicDefense        Specialized */
     , (451610941, 20, 0, 3, 0, 150, 0, 705.6901924444477) /* Deception           Specialized */
     , (451610941, 24, 0, 3, 0,  920, 0, 705.6901924444477) /* Run                 Specialized */
     , (451610941, 31, 0, 3, 0, 1250, 0, 705.6901924444477) /* CreatureEnchantment Specialized */
     , (451610941, 33, 0, 3, 0, 1850, 0, 705.6901924444477) /* LifeMagic           Specialized */
     , (451610941, 34, 0, 3, 0, 2150, 0, 705.6901924444477) /* WarMagic            Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (451610941,  0,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (451610941,  1,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (451610941,  2,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (451610941,  3,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (451610941,  4,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (451610941,  5,  4,  2, 0.75,  225,  203,  225,  248,   90,   90,  225,  135,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (451610941,  6,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (451610941,  7,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (451610941,  8,  4,  2, 0.75,  225,  203,  225,  248,   90,   90,  225,  135,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (451610941,  2765,   2.005)  /* Martyr's Hecatomb VI */
     , (451610941,  1089,   2.05)  /* Lightning Vulnerability Other VI */
     , (451610941,  2128,   2.09)  /* Ilservian's Flame */
     , (451610941,  1108,   2.025)  /* Fire Vulnerability Other VI */
     , (451610941,  1156,   2.025)  /* Piercing Vulnerability Other VI */
     , (451610941,  2132,   2.09)  /* The Spike */
     , (451610941,  2140,   2.09)  /* Alset's Coil */
     , (451610941,   526,   2.025)  /* Acid Vulnerability Other VI */     
     , (451610941,  2136,   2.09)  /* Icy Torment */     
     , (451610941,  1053,   2.025)  /* Bludgeoning Vulnerability Other VI */
     , (451610941,  2144,   2.09)  /* Crushing Shame */
     , (451610941,  2146,   2.09)  /* Evisceration */
     , (451610941,  1065,   2.025)  /* Cold Vulnerability Other VI */
     , (451610941,  1132,   2.025)  /* Blade Vulnerability Other VI */
     , (451610941,  1327,   2.05)  /* Imperil Other VI */
     , (451610941,    63,   2.09)  /* Acid Stream VI */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (451610941,  94)
     , (451610941, 414);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (451610941, 9, 1548801,  3, 0,  0.02, False) /* 1548801 Potion of Resistance */
     , (451610941, 9,      0,  0, 0,   0.98, False)    /* Create nothing for ContainTreasure */
	 , (451610941, 9, 490248,  0, 0,   0.15, False) /* 4200028 Set Randomizer Morph Gem */
	 , (451610941, 9,      0,  0, 0,   0.85, False)    /* Create nothing for ContainTreasure */
	 , (451610941, 9, 600032,  1, 0, 0.0125, False) /* Empyrean Tailoring Scissors */
	 , (451610941, 9, 600035,  1, 0, 0.0125, False) /* 600035 Durable Empyrean Forging Hammer */
	 , (451610941, 9, 600034,  1, 0, 0.0125, False) /* 600034 Gem of Damage Protection */
	 , (451610941, 9, 600033,  1, 0, 0.0125, False) /* 600033 Gem of Damage Enhancement */ 
	 , (451610941, 9,      0,  0, 0,   0.95, False)    /* Create nothing for ContainTreasure */
	 , (451610941, 9, 1548806,  1, 0,  0.05, False) /* 1548806 Rare Damage Reduction Morph Gem */
	 , (451610941, 9, 1548805,  1, 0,  0.05, False) /* 1548805 Rare Damage Boost Morph Gem */ 
	 , (451610941, 9,      0,  0, 0,    0.9, False)    /* Create nothing for ContainTreasure */
	 , (451610941, 9, 490273,  1, 0,   0.05, False) /* 490273 Rare Gem of Critical Damage Reduction */
	 , (451610941, 9, 490272,  1, 0,   0.05, False) /* 490272 Rare Gem of Critical Damage */ 
	 , (451610941, 9,      0,  0, 0,    0.9, False)    /* Create nothing for ContainTreasure */
	 , (451610941, 9, 41541201,  1, 0, 0.15, False) /* 41541201 Paragon Legendary Quest Gem */ 
	 , (451610941, 9,      0,  0, 0,   0.85, False)    /* Create nothing for ContainTreasure */
	 , (451610941, 9,   600058,  1, 0, 0.2, False) /* 600058 Oil of the Elements Gem */ 
	 , (451610941, 9,      0,  0, 0,   0.8, False)    /* Create nothing for ContainTreasure */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (451610941, -1, 451610942, 0, 1, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) /* Adroth Salson (451610942) */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610941,  9 /* Generate */,  1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  72 /* Generate */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610941,  3 /* Death */,   0.99, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, 'As he begins his journey back to the lifestone, Torgrym is heard to mutter, "Damn. Bloke must use that Virindi thing... whassit... that funny gear stuff. I''m too... elite... for this..."', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610941,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, 'As he begins his journey back to the lifestone near, Torgrym mutters deliriously, "Anyone gotta portal to subway..?"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610941, 14 /* Taunt */,   0.05, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, 'Torgrym glares over his orb at %s. "Come on, foight like a man. Been whackin'' on these dumb local critters too long, eh? No challenge in ''em, I say."', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610941, 14 /* Taunt */,    0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, 'Torgrym glares over his orb at %s. "Loik the Tumies say, mate, ''zhtufu ah gahrede.'' That means ''silence, loser, or meet me outside.'' Er... kinda, anyway."', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610941, 14 /* Taunt */,   0.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, 'Torgrym glares over his orb at %s. "Ya precious great pansy ... wossamatta, been sittin'' down in Black Spawn Den too long? Do the sun hurt yer eyes?"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610941, 15 /* WoundedTaunt */,  0.049, NULL, NULL, NULL, NULL, NULL, 0.049, 0.051);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, 'Torgrym winces and mumbles, "Roit, thassit. I''m recalling. I''m not dying for this."', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610941, 15 /* WoundedTaunt */,   0.19, NULL, NULL, NULL, NULL, NULL, 0.19, 0.21);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, 'Torgrym winces and mumbles, "Ack, that hurts. Are me buffs down already?"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610941, 16 /* KillTaunt */,    0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, '"Ha!" Torgrym guffaws. "If yeh can''t foight wid the best of us, go foight drudges. Suck vitae, %s."', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610941, 16 /* KillTaunt */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, '"Woo hoo!" Torgrym crows. "I owned yeh loik a wee lil'' girl!"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610941, 21 /* ResistSpell */,    0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, 'Torgrym laughs at %s''s feeble spellcasting. "Ha! When I wozza boy I spent weeks honing my magic defense in the Zaikhal meeting hall."', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

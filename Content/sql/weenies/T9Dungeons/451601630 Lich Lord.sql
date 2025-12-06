DELETE FROM `weenie` WHERE `class_Id` = 451601630;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451601630, 'T9_zombielichlord', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451601630,   1,         16) /* ItemType - Creature */
     , (451601630,   2,         14) /* CreatureType - Undead */
     , (451601630,   3,         69) /* PaletteTemplate - YellowSlime */
     , (451601630,   6,         -1) /* ItemsCapacity */
     , (451601630,   7,         -1) /* ContainersCapacity */
     , (451601630,  16,          1) /* ItemUseable - No */
     , (451601630,  25,        666) /* Level */
     , (451601630,  27,          0) /* ArmorType - None */
     , (451601630,  40,          1) /* CombatMode - NonCombat */
     , (451601630,  68,          3) /* TargetingTactic - Random, Focused */
	 , (451601630,  81,          1) /* MaxGeneratedObjects */
     , (451601630,  82,          1) /* InitGeneratedObjects */  	 
     , (451601630,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (451601630, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (451601630, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (451601630, 140,          1) /* AiOptions - CanOpenDoors */
     , (451601630, 146,      17500) /* XpOverride */
	 , (451601630, 307,       1240) /* DamageRating */
	 , (451601630, 308,         84) /* DamageResistRating */
	 , (451601630, 332,      12200) /* LuminanceAward */     
	 , (451601630, 386,         18) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451601630,   1, True ) /* Stuck */
     , (451601630,   6, True ) /* AiUsesMana */
     , (451601630,  11, False) /* IgnoreCollisions */
     , (451601630,  12, True ) /* ReportCollisions */
     , (451601630,  13, False) /* Ethereal */
     , (451601630,  14, True ) /* GravityStatus */
     , (451601630,  19, True ) /* Attackable */
     , (451601630,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451601630,   1,       5) /* HeartbeatInterval */
     , (451601630,   2,       0) /* HeartbeatTimestamp */
     , (451601630,   3,    0.45) /* HealthRate */
     , (451601630,   4,     0.5) /* StaminaRate */
     , (451601630,   5,       2) /* ManaRate */
     , (451601630,  12,     0.5) /* Shade */
     , (451601630,  13,     0.8) /* ArmorModVsSlash */
     , (451601630,  14,    0.42) /* ArmorModVsPierce */
     , (451601630,  15,    0.62) /* ArmorModVsBludgeon */
     , (451601630,  16,    0.38) /* ArmorModVsCold */
     , (451601630,  17,     0.5) /* ArmorModVsFire */
     , (451601630,  18,    0.62) /* ArmorModVsAcid */
     , (451601630,  19,     0.7) /* ArmorModVsElectric */
     , (451601630,  31,      18) /* VisualAwarenessRange */
     , (451601630,  34,     1.1) /* PowerupTime */
     , (451601630,  36,       1) /* ChargeSpeed */
	 , (451601630,  43,       3) /* GeneratorRadius */
     , (451601630,  64,       1) /* ResistSlash */
     , (451601630,  65,    0.52) /* ResistPierce */
     , (451601630,  66,    0.75) /* ResistBludgeon */
     , (451601630,  67,       1) /* ResistFire */
     , (451601630,  68,     0.2) /* ResistCold */
     , (451601630,  69,    0.75) /* ResistAcid */
     , (451601630,  70,    0.86) /* ResistElectric */
     , (451601630,  71,       1) /* ResistHealthBoost */
     , (451601630,  72,       1) /* ResistStaminaDrain */
     , (451601630,  73,       1) /* ResistStaminaBoost */
     , (451601630,  74,       1) /* ResistManaDrain */
     , (451601630,  75,       1) /* ResistManaBoost */
     , (451601630,  80,       3) /* AiUseMagicDelay */
     , (451601630, 104,      10) /* ObviousRadarRange */
     , (451601630, 122,       2) /* AiAcquireHealth */
     , (451601630, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451601630,   1, 'Lich Lord') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451601630,   1, 0x02000197) /* Setup */
     , (451601630,   2, 0x09000017) /* MotionTable */
     , (451601630,   3, 0x20000016) /* SoundTable */
     , (451601630,   4, 0x30000000) /* CombatTable */
     , (451601630,   6, 0x04000742) /* PaletteBase */
     , (451601630,   7, 0x10000066) /* ClothingBase */
     , (451601630,   8, 0x06001226) /* Icon */
     , (451601630,  22, 0x34000028) /* PhysicsEffectTable */
     , (451601630,  32,        249) /* WieldedTreasureType */
     , (451601630,  35,      10021) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (451601630,   1, 5100, 0, 0) /* Strength */
     , (451601630,   2, 21110, 0, 0) /* Endurance */
     , (451601630,   3,  480, 0, 0) /* Quickness */
     , (451601630,   4, 3640, 0, 0) /* Coordination */
     , (451601630,   5, 3275, 0, 0) /* Focus */
     , (451601630,   6, 165, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (451601630,   1,   42850, 0, 0, 42850) /* MaxHealth */
     , (451601630,   3,   42850, 0, 0, 42850) /* MaxStamina */
     , (451601630,   5,   42850, 0, 0, 42850) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (451601630,  6, 0, 3, 0, 0, 0, 0) /* MeleeDefense        Specialized */
     , (451601630,  7, 0, 3, 0, 0, 0, 0) /* MissileDefense      Specialized */
     , (451601630, 14, 0, 2, 0, 200, 0, 0) /* ArcaneLore          Trained */
     , (451601630, 15, 0, 3, 0, 0, 0, 0) /* MagicDefense        Specialized */
     , (451601630, 20, 0, 2, 0,  50, 0, 0) /* Deception           Trained */
     , (451601630, 31, 0, 3, 0,  880, 0, 0) /* CreatureEnchantment Specialized */
     , (451601630, 33, 0, 3, 0,  880, 0, 0) /* LifeMagic           Specialized */
     , (451601630, 34, 0, 3, 0,  4280, 0, 0) /* WarMagic            Specialized */
     , (451601630, 44, 0, 3, 0, 6125, 0, 0) /* HeavyWeapons        Specialized */
     , (451601630, 45, 0, 3, 0, 6125, 0, 0) /* LightWeapons        Specialized */
     , (451601630, 46, 0, 3, 0, 6125, 0, 0) /* FinesseWeapons      Specialized */
     , (451601630, 47, 0, 3, 0, 46100, 0, 0) /* MissileWeapons      Specialized */
     , (451601630, 48, 0, 3, 0, 125, 0, 0) /* Shield              Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (451601630,  0,  4,  0,    0,  110,   88,   46,   68,   42,   55,   68,   77,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (451601630,  1,  4,  0,    0,  120,   96,   50,   74,   46,   60,   74,   84,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (451601630,  2,  4,  0,    0,  120,   96,   50,   74,   46,   60,   74,   84,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (451601630,  3,  4,  0,    0,  110,   88,   46,   68,   42,   55,   68,   77,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (451601630,  4,  4,  0,    0,  120,   96,   50,   74,   46,   60,   74,   84,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (451601630,  5,  4,  2, 0.75,  130,  104,   55,   81,   49,   65,   81,   91,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (451601630,  6,  4,  0,    0,  130,  104,   55,   81,   49,   65,   81,   91,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (451601630,  7,  4,  0,    0,  130,  104,   55,   81,   49,   65,   81,   91,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (451601630,  8,  4,  3, 0.75,  130,  104,   55,   81,   49,   65,   81,   91,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (451601630,    60,  2.013)  /* Acid Stream III */
     , (451601630,    66,  2.013)  /* Shock Wave III */
     , (451601630,    71,  2.013)  /* Frost Bolt III */
     , (451601630,    77,  2.013)  /* Lightning Bolt III */
     , (451601630,    82,  2.013)  /* Flame Bolt III */
     , (451601630,    88,  2.013)  /* Force Bolt III */
     , (451601630,    94,  2.013)  /* Whirling Blade III */
     , (451601630,   127,  2.013)  /* Acid Volley III */
     , (451601630,   135,  2.013)  /* Frost Volley III */
     , (451601630,   139,  2.013)  /* Lightning Volley III */
     , (451601630,   143,  2.013)  /* Flame Volley III */
     , (451601630,   167,   2.02)  /* Regeneration Self III */
     , (451601630,   173,  2.009)  /* Fester Other III */
     , (451601630,  1239,   2.02)  /* Drain Health Other III */
     , (451601630,  1251,   2.02)  /* Drain Stamina Other III */
     , (451601630,  1262,   2.02)  /* Drain Mana Other III */
     , (451601630,  1340,  2.009)  /* Weakness Other III */
     , (451601630,  1369,  2.009)  /* Frailty Other III */
     , (451601630,  1393,  2.009)  /* Clumsiness Other III */
     , (451601630,  1417,  2.009)  /* Slowness Other III */
     , (451601630,  1441,  2.009)  /* Bafflement Other III */
     , (451601630,  1465,  2.009)  /* Feeblemind Other III */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (451601630,  94)
     , (451601630, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451601630,  3 /* Death */,  0.0025, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  72 /* Generate */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (451601630, 1, 451610938, 0, 1, 1, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) /* Generate Li Fanli (451610938) */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451601630,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  88 /* LocalSignal */, 0, 1, NULL, 'ColoCritterKilled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451601630,  9 /* Generation */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  88 /* LocalSignal */, 0, 1, NULL, 'ColoCritterSpawned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (451601630, 9,  7041,  0, 0, 0.02, False) /* Create Undead Thighbone (7041) for ContainTreasure */
     , (451601630, 9,     0,  0, 0, 0.98, False) /* Create nothing for ContainTreasure */
     , (451601630, 9,  9312,  0, 0, 0.04, False) /* Create A Small Mnemosyne (9312) for ContainTreasure */
     , (451601630, 9,     0,  0, 0, 0.96, False) /* Create nothing for ContainTreasure */
     , (451601630, 9, 15770,  0, 0, 0.02, False) /* Create Ruined Amulet of Light Weapons (15770) for ContainTreasure */
     , (451601630, 9,     0,  0, 0, 0.98, False) /* Create nothing for ContainTreasure */
     , (451601630, 9, 19477,  0, 0, 0.05, False) /* Create Undead Femur bone (19477) for ContainTreasure */
     , (451601630, 9,     0,  0, 0, 0.95, False) /* Create nothing for ContainTreasure */
     , (451601630, 9, 12225,  0, 0, 0.05, False) /* Create Zombie Head (12225) for ContainTreasure */
     , (451601630, 9,     0,  0, 0, 0.95, False) /* Create nothing for ContainTreasure */
     , (451601630, 9, 22028,  0, 0, 0.05, False) /* Create Undead Arm (22028) for ContainTreasure */
     , (451601630, 9,     0,  0, 0, 0.95, False) /* Create nothing for ContainTreasure */
     , (451601630, 9, 22032,  0, 0, 0.05, False) /* Create Undead Leg (22032) for ContainTreasure */
     , (451601630, 9,     0,  0, 0, 0.95, False) /* Create nothing for ContainTreasure */
     , (451601630, 9, 22048,  0, 0, 0.05, False) /* Create Undead Torso (22048) for ContainTreasure */
     , (451601630, 9,     0,  0, 0, 0.95, False) /* Create nothing for ContainTreasure */;

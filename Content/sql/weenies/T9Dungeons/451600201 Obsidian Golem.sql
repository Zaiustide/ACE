DELETE FROM `weenie` WHERE `class_Id` = 451600201;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451600201, 'T9_golemobsidian', 10, '2022-08-22 03:09:27') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451600201,   1,         16) /* ItemType - Creature */
     , (451600201,   2,         13) /* CreatureType - Golem */
     , (451600201,   6,         -1) /* ItemsCapacity */
     , (451600201,   7,         -1) /* ContainersCapacity */
     , (451600201,  16,          1) /* ItemUseable - No */
     , (451600201,  25,         60) /* Level */
     , (451600201,  27,          0) /* ArmorType - None */
     , (451600201,  40,          2) /* CombatMode - Melee */
     , (451600201,  68,          3) /* TargetingTactic - Random, Focused */
	 , (451600201,  81,          1) /* MaxGeneratedObjects */
     , (451600201,  82,          1) /* InitGeneratedObjects */
     , (451600201,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (451600201, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (451600201, 146,   12750000) /* XpOverride */
	 , (451600201, 307,        848) /* DamageRating */
	 , (451600201, 308,         22) /* DamageResistRating */
	 , (451600201, 332,       6200) /* LuminanceAward */     
	 , (451600201, 386,         25) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451600201,   1, True ) /* Stuck */
     , (451600201,   6, True ) /* AiUsesMana */
     , (451600201,  11, False) /* IgnoreCollisions */
     , (451600201,  12, True ) /* ReportCollisions */
     , (451600201,  13, False) /* Ethereal */
     , (451600201,  14, True ) /* GravityStatus */
     , (451600201,  19, True ) /* Attackable */
     , (451600201,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451600201,   1,       5) /* HeartbeatInterval */
     , (451600201,   2,       0) /* HeartbeatTimestamp */
     , (451600201,   3,     0.6) /* HealthRate */
     , (451600201,   4,     0.5) /* StaminaRate */
     , (451600201,   5,       2) /* ManaRate */
     , (451600201,   6,     0.1) /* HealthUponResurrection */
     , (451600201,   7,    0.25) /* StaminaUponResurrection */
     , (451600201,   8,     0.3) /* ManaUponResurrection */
     , (451600201,  13,    1.41) /* ArmorModVsSlash */
     , (451600201,  14,    1.76) /* ArmorModVsPierce */
     , (451600201,  15,     1.2) /* ArmorModVsBludgeon */
     , (451600201,  16,    0.63) /* ArmorModVsCold */
     , (451600201,  17,    1.75) /* ArmorModVsFire */
     , (451600201,  18,    0.67) /* ArmorModVsAcid */
     , (451600201,  19,    1.75) /* ArmorModVsElectric */
     , (451600201,  31,      25) /* VisualAwarenessRange */
     , (451600201,  34,     3.6) /* PowerupTime */
	 , (451600201,  43,       3) /* GeneratorRadius */
     , (451600201,  64,    0.53) /* ResistSlash */
     , (451600201,  65,     0.9) /* ResistPierce */
     , (451600201,  66,       1) /* ResistBludgeon */
     , (451600201,  67,     0.4) /* ResistFire */
     , (451600201,  68,     0.1) /* ResistCold */
     , (451600201,  69,     0.2) /* ResistAcid */
     , (451600201,  70,     0.4) /* ResistElectric */
     , (451600201,  71,       1) /* ResistHealthBoost */
     , (451600201,  72,       1) /* ResistStaminaDrain */
     , (451600201,  73,       1) /* ResistStaminaBoost */
     , (451600201,  74,       1) /* ResistManaDrain */
     , (451600201,  75,       1) /* ResistManaBoost */
     , (451600201,  80,       3) /* AiUseMagicDelay */
     , (451600201, 104,      10) /* ObviousRadarRange */
     , (451600201, 122,       2) /* AiAcquireHealth */
     , (451600201, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451600201,   1, 'Obsidian Golem') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451600201,   1, 0x020007D8) /* Setup */
     , (451600201,   2, 0x09000081) /* MotionTable */
     , (451600201,   3, 0x20000015) /* SoundTable */
     , (451600201,   4, 0x30000008) /* CombatTable */
     , (451600201,   8, 0x06001224) /* Icon */
     , (451600201,  22, 0x3400005F) /* PhysicsEffectTable */
     , (451600201,  35,      10021) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (451600201,   1, 2150, 0, 0) /* Strength */
     , (451600201,   2, 1180, 0, 0) /* Endurance */
     , (451600201,   3,  970, 0, 0) /* Quickness */
     , (451600201,   4,  680, 0, 0) /* Coordination */
     , (451600201,   5, 3140, 0, 0) /* Focus */
     , (451600201,   6,  140, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (451600201,   1,   18000, 0, 0, 18000) /* MaxHealth */
     , (451600201,   3,   18000, 0, 0, 18000) /* MaxStamina */
     , (451600201,   5,   18000, 0, 0, 18000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (451600201,  6, 0, 3, 0, 215, 0, 0) /* MeleeDefense        Specialized */
     , (451600201,  7, 0, 3, 0, 130, 0, 0) /* MissileDefense      Specialized */
     , (451600201, 14, 0, 2, 0, 200, 0, 0) /* ArcaneLore          Trained */
     , (451600201, 15, 0, 3, 0,  15, 0, 0) /* MagicDefense        Specialized */
     , (451600201, 20, 0, 2, 0, 100, 0, 0) /* Deception           Trained */
     , (451600201, 22, 0, 2, 0,  10, 0, 0) /* Jump                Trained */
     , (451600201, 24, 0, 2, 0, 910, 0, 0) /* Run                 Trained */
     , (451600201, 31, 0, 3, 0, 810, 0, 0) /* CreatureEnchantment Specialized */
     , (451600201, 33, 0, 3, 0, 810, 0, 0) /* LifeMagic           Specialized */
     , (451600201, 34, 0, 3, 0, 4810, 0, 0) /* WarMagic            Specialized */
     , (451600201, 45, 0, 3, 0, 2200, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (451600201,  0,  4,  0,    0,  150,  212,  264,  180,   95,  263,  101,  263,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (451600201,  1,  4,  0,    0,  150,  212,  264,  180,   95,  263,  101,  263,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (451600201,  2,  4,  0,    0,  150,  212,  264,  180,   95,  263,  101,  263,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (451600201,  3,  4,  0,    0,  150,  212,  264,  180,   95,  263,  101,  263,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (451600201,  4,  4,  0,    0,  150,  212,  264,  180,   95,  263,  101,  263,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (451600201,  5,  4, 65, 0.75,  150,  212,  264,  180,   95,  263,  101,  263,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (451600201,  6,  4,  0,    0,  150,  212,  264,  180,   95,  263,  101,  263,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (451600201,  7,  4,  0,    0,  150,  212,  264,  180,   95,  263,  101,  263,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (451600201,  8,  4, 65, 0.75,  150,  212,  264,  180,   95,  263,  101,  263,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (451600201,    66,  2.016)  /* Shock Wave III */
     , (451600201,    71,  2.016)  /* Frost Bolt III */
     , (451600201,    77,  2.016)  /* Lightning Bolt III */
     , (451600201,    88,  2.016)  /* Force Bolt III */
     , (451600201,    94,  2.016)  /* Whirling Blade III */
     , (451600201,   103,  2.009)  /* Shock Blast III */
     , (451600201,   139,  2.009)  /* Lightning Volley III */
     , (451600201,   167,   2.01)  /* Regeneration Self III */
     , (451600201,   231,  2.007)  /* Vulnerability Other III */
     , (451600201,  1239,   2.01)  /* Drain Health Other III */
     , (451600201,  1251,   2.01)  /* Drain Stamina Other III */
     , (451600201,  1262,   2.01)  /* Drain Mana Other III */
     , (451600201,  1393,  2.007)  /* Clumsiness Other III */
     , (451600201,  1417,  2.007)  /* Slowness Other III */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (451600201,  94)
     , (451600201, 414);


INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451600201,  3 /* Death */,  0.0125, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  72 /* Generate */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (451600201, 1, 451610938, 0, 1, 1, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) /* Generate Li Fanli (451610938) */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451600201,  5 /* HeartBeat */,  0.075, NULL, 0x8000003C /* HandCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x10000051 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451600201,  5 /* HeartBeat */,      1, NULL, 0x8000003D /* NonCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,   5 /* Motion */, 0, 1, 0x41000014 /* Sleeping */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (451600201, 9,  3692,  0, 0, 0.03, False) /* Create Black Stone (3692) for ContainTreasure */
     , (451600201, 9,     0,  0, 0, 0.97, False) /* Create nothing for ContainTreasure */
     , (451600201, 9,  6353,  0, 0, 0.03, False) /* Create Pyreal Mote (6353) for ContainTreasure */
     , (451600201, 9,     0,  0, 0, 0.97, False) /* Create nothing for ContainTreasure */
     , (451600201, 9,  6876,  0, 0, 0.01, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (451600201, 9,     0,  0, 0, 0.99, False) /* Create nothing for ContainTreasure */
     , (451600201, 9,  9324,  0, 0, 0.1, False) /* Create Obsidian Heart (9324) for ContainTreasure */
     , (451600201, 9,     0,  0, 0, 0.9, False) /* Create nothing for ContainTreasure */;

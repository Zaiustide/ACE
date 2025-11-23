DELETE FROM `weenie` WHERE `class_Id` = 451600195;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451600195, 'T9_golemgranite', 10, '2022-08-22 03:09:27') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451600195,   1,         16) /* ItemType - Creature */
     , (451600195,   2,         13) /* CreatureType - Golem */
     , (451600195,   6,         -1) /* ItemsCapacity */
     , (451600195,   7,         -1) /* ContainersCapacity */
     , (451600195,  16,          1) /* ItemUseable - No */
     , (451600195,  25,        666) /* Level */
     , (451600195,  27,          0) /* ArmorType - None */
     , (451600195,  40,          2) /* CombatMode - Melee */
	 , (451600195,  68,          3) /* TargetingTactic - Random, Focused */
	 , (451600195,  81,          1) /* MaxGeneratedObjects */
     , (451600195,  82,          1) /* InitGeneratedObjects */     
     , (451600195,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (451600195, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (451600195, 146,   10750000) /* XpOverride */
	 , (451600195, 307,        1235) /* DamageRating */
	 , (451600195, 308,         42) /* DamageResistRating */
	 , (451600195, 332,       6100) /* LuminanceAward */     
	 , (451600195, 386,         20) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451600195,   1, True ) /* Stuck */
     , (451600195,   6, True ) /* AiUsesMana */
     , (451600195,  11, False) /* IgnoreCollisions */
     , (451600195,  12, True ) /* ReportCollisions */
     , (451600195,  13, False) /* Ethereal */
     , (451600195,  14, True ) /* GravityStatus */
     , (451600195,  19, True ) /* Attackable */
     , (451600195,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451600195,   1,       5) /* HeartbeatInterval */
     , (451600195,   2,       0) /* HeartbeatTimestamp */
     , (451600195,   3,    0.35) /* HealthRate */
     , (451600195,   4,       5) /* StaminaRate */
     , (451600195,   5,       2) /* ManaRate */
     , (451600195,  13,    1.31) /* ArmorModVsSlash */
     , (451600195,  14,    1.74) /* ArmorModVsPierce */
     , (451600195,  15,     1.2) /* ArmorModVsBludgeon */
     , (451600195,  16,    0.44) /* ArmorModVsCold */
     , (451600195,  17,    1.63) /* ArmorModVsFire */
     , (451600195,  18,    0.58) /* ArmorModVsAcid */
     , (451600195,  19,    1.63) /* ArmorModVsElectric */
     , (451600195,  31,      13) /* VisualAwarenessRange */
     , (451600195,  34,     2.5) /* PowerupTime */
     , (451600195,  36,       1) /* ChargeSpeed */	 
     , (451600195,  39,     1.1) /* DefaultScale */
	 , (451600195,  43,       3) /* GeneratorRadius */
     , (451600195,  64,    0.53) /* ResistSlash */
     , (451600195,  65,     0.9) /* ResistPierce */
     , (451600195,  66,       1) /* ResistBludgeon */
     , (451600195,  67,     0.4) /* ResistFire */
     , (451600195,  68,     0.1) /* ResistCold */
     , (451600195,  69,    0.33) /* ResistAcid */
     , (451600195,  70,     0.4) /* ResistElectric */
     , (451600195,  71,       1) /* ResistHealthBoost */
     , (451600195,  72,       1) /* ResistStaminaDrain */
     , (451600195,  73,       1) /* ResistStaminaBoost */
     , (451600195,  74,       1) /* ResistManaDrain */
     , (451600195,  75,       1) /* ResistManaBoost */
     , (451600195,  80,     2.5) /* AiUseMagicDelay */
     , (451600195, 104,      10) /* ObviousRadarRange */
     , (451600195, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451600195,   1, 'Granite Golem') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451600195,   1, 0x020007CA) /* Setup */
     , (451600195,   2, 0x09000081) /* MotionTable */
     , (451600195,   3, 0x20000015) /* SoundTable */
     , (451600195,   4, 0x30000008) /* CombatTable */
     , (451600195,   8, 0x06001224) /* Icon */
     , (451600195,  22, 0x34000060) /* PhysicsEffectTable */
     , (451600195,  35,      10021) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (451600195,   1, 2150, 0, 0) /* Strength */
     , (451600195,   2, 31180, 0, 0) /* Endurance */
     , (451600195,   3,  870, 0, 0) /* Quickness */
     , (451600195,   4,  280, 0, 0) /* Coordination */
     , (451600195,   5, 2140, 0, 0) /* Focus */
     , (451600195,   6,  140, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (451600195,   1,   24532, 0, 0, 24532) /* MaxHealth */
     , (451600195,   3,   17000, 0, 0, 17000) /* MaxStamina */
     , (451600195,   5,   34000, 0, 0, 34000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (451600195,  6, 0, 3, 0, 0, 0, 0) /* MeleeDefense        Specialized */
     , (451600195,  7, 0, 3, 0, 0, 0, 0) /* MissileDefense      Specialized */
     , (451600195, 14, 0, 2, 0, 190, 0, 0) /* ArcaneLore          Trained */
     , (451600195, 15, 0, 3, 0,   0, 0, 0) /* MagicDefense        Specialized */
     , (451600195, 20, 0, 2, 0,  80, 0, 0) /* Deception           Trained */
     , (451600195, 22, 0, 2, 0,  10, 0, 0) /* Jump                Trained */
     , (451600195, 24, 0, 2, 0, 810, 0, 0) /* Run                 Trained */
     , (451600195, 31, 0, 3, 0, 820, 0, 0) /* CreatureEnchantment Specialized */
     , (451600195, 33, 0, 3, 0, 820, 0, 0) /* LifeMagic           Specialized */
     , (451600195, 34, 0, 3, 0, 22820, 0, 0) /* WarMagic            Specialized */
     , (451600195, 45, 0, 3, 0, 990, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (451600195,  0,  4,  0,    0,  100,  131,  174,  120,   44,  163,   58,  163,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (451600195,  1,  4,  0,    0,  100,  131,  174,  120,   44,  163,   58,  163,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (451600195,  2,  4,  0,    0,  100,  131,  174,  120,   44,  163,   58,  163,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (451600195,  3,  4,  0,    0,  100,  131,  174,  120,   44,  163,   58,  163,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (451600195,  4,  4,  0,    0,  100,  131,  174,  120,   44,  163,   58,  163,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (451600195,  5,  4, 45, 0.75,  100,  131,  174,  120,   44,  163,   58,  163,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (451600195,  6,  4,  0,    0,  100,  131,  174,  120,   44,  163,   58,  163,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (451600195,  7,  4,  0,    0,  100,  131,  174,  120,   44,  163,   58,  163,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (451600195,  8,  4, 45, 0.75,  100,  131,  174,  120,   44,  163,   58,  163,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (451600195,    66,   2.06)  /* Shock Wave III */
     , (451600195,    94,   2.06)  /* Whirling Blade III */
     , (451600195,   103,  2.013)  /* Shock Blast III */
     , (451600195,   231,  2.005)  /* Vulnerability Other III */
     , (451600195,  1251,   2.02)  /* Drain Stamina Other III */
     , (451600195,  1393,  2.005)  /* Clumsiness Other III */
     , (451600195,  1417,  2.005)  /* Slowness Other III */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (451600195,  94)
     , (451600195, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451600195,  3 /* Death */,  0.0125, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  72 /* Generate */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (451600195, 1, 451610938, 0, 1, 1, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) /* Generate Li Fanli (451610938) */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451600195,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  88 /* LocalSignal */, 0, 1, NULL, 'ColoCritterKilled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451600195,  5 /* HeartBeat */,  0.075, NULL, 0x8000003C /* HandCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x10000051 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451600195,  5 /* HeartBeat */,      1, NULL, 0x8000003D /* NonCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,   5 /* Motion */, 0, 1, 0x41000014 /* Sleeping */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451600195,  9 /* Generation */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  88 /* LocalSignal */, 0, 1, NULL, 'ColoCritterSpawned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (451600195, 9,  3671,  0, 0, 0.05, False) /* Create Granite Heart (3671) for ContainTreasure */
     , (451600195, 9,     0,  0, 0, 0.95, False) /* Create nothing for ContainTreasure */
     , (451600195, 9,  6353,  0, 0, 0.03, False) /* Create Pyreal Mote (6353) for ContainTreasure */
     , (451600195, 9,     0,  0, 0, 0.97, False) /* Create nothing for ContainTreasure */;

DELETE FROM `weenie` WHERE `class_Id` = 451600194;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451600194, 'T9_golemcopper', 10, '2022-08-22 03:09:27') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451600194,   1,         16) /* ItemType - Creature */
     , (451600194,   2,         13) /* CreatureType - Golem */
     , (451600194,   3,         19) /* PaletteTemplate - Copper */
     , (451600194,   6,         -1) /* ItemsCapacity */
     , (451600194,   7,         -1) /* ContainersCapacity */
     , (451600194,  16,          1) /* ItemUseable - No */
     , (451600194,  25,        666) /* Level */
     , (451600194,  27,          0) /* ArmorType - None */
     , (451600194,  40,          2) /* CombatMode - Melee */
     , (451600194,  68,          9) /* TargetingTactic - Random, TopDamager */
     , (451600194,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (451600194, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (451600194, 146,       7000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451600194,   1, True ) /* Stuck */
     , (451600194,   6, True ) /* AiUsesMana */
     , (451600194,  11, False) /* IgnoreCollisions */
     , (451600194,  12, True ) /* ReportCollisions */
     , (451600194,  13, False) /* Ethereal */
     , (451600194,  14, True ) /* GravityStatus */
     , (451600194,  19, True ) /* Attackable */
     , (451600194,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451600194,   1,       5) /* HeartbeatInterval */
     , (451600194,   2,       0) /* HeartbeatTimestamp */
     , (451600194,   3,     0.5) /* HealthRate */
     , (451600194,   4,     0.5) /* StaminaRate */
     , (451600194,   5,       2) /* ManaRate */
     , (451600194,   6,     0.1) /* HealthUponResurrection */
     , (451600194,   7,    0.25) /* StaminaUponResurrection */
     , (451600194,   8,     0.3) /* ManaUponResurrection */
     , (451600194,  12,     0.5) /* Shade */
     , (451600194,  13,    0.44) /* ArmorModVsSlash */
     , (451600194,  14,    0.58) /* ArmorModVsPierce */
     , (451600194,  15,    0.86) /* ArmorModVsBludgeon */
     , (451600194,  16,    0.33) /* ArmorModVsCold */
     , (451600194,  17,    0.33) /* ArmorModVsFire */
     , (451600194,  18,     0.8) /* ArmorModVsAcid */
     , (451600194,  19,       1) /* ArmorModVsElectric */
     , (451600194,  31,      25) /* VisualAwarenessRange */
     , (451600194,  34,     2.5) /* PowerupTime */
     , (451600194,  64,    0.33) /* ResistSlash */
     , (451600194,  65,     0.5) /* ResistPierce */
     , (451600194,  66,    0.83) /* ResistBludgeon */
     , (451600194,  67,     0.2) /* ResistFire */
     , (451600194,  68,     0.2) /* ResistCold */
     , (451600194,  69,       1) /* ResistAcid */
     , (451600194,  70,       1) /* ResistElectric */
     , (451600194,  71,       1) /* ResistHealthBoost */
     , (451600194,  72,       1) /* ResistStaminaDrain */
     , (451600194,  73,       1) /* ResistStaminaBoost */
     , (451600194,  74,       1) /* ResistManaDrain */
     , (451600194,  75,       1) /* ResistManaBoost */
     , (451600194,  80,       3) /* AiUseMagicDelay */
     , (451600194, 104,      10) /* ObviousRadarRange */
     , (451600194, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451600194,   1, 'Copper Golem') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451600194,   1, 0x020007CA) /* Setup */
     , (451600194,   2, 0x09000081) /* MotionTable */
     , (451600194,   3, 0x20000015) /* SoundTable */
     , (451600194,   4, 0x30000008) /* CombatTable */
     , (451600194,   6, 0x04000F44) /* PaletteBase */
     , (451600194,   7, 0x1000020C) /* ClothingBase */
     , (451600194,   8, 0x06001224) /* Icon */
     , (451600194,  22, 0x34000059) /* PhysicsEffectTable */
     , (451600194,  35,      10021) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (451600194,   1, 120, 0, 0) /* Strength */
     , (451600194,   2, 160, 0, 0) /* Endurance */
     , (451600194,   3,  40, 0, 0) /* Quickness */
     , (451600194,   4,  60, 0, 0) /* Coordination */
     , (451600194,   5, 110, 0, 0) /* Focus */
     , (451600194,   6, 110, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (451600194,   1,    70, 0, 0, 150) /* MaxHealth */
     , (451600194,   3,   150, 0, 0, 310) /* MaxStamina */
     , (451600194,   5,   200, 0, 0, 310) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (451600194,  6, 0, 3, 0, 155, 0, 0) /* MeleeDefense        Specialized */
     , (451600194,  7, 0, 3, 0, 250, 0, 0) /* MissileDefense      Specialized */
     , (451600194, 14, 0, 2, 0, 200, 0, 0) /* ArcaneLore          Trained */
     , (451600194, 15, 0, 3, 0, 126, 0, 0) /* MagicDefense        Specialized */
     , (451600194, 20, 0, 2, 0,  80, 0, 0) /* Deception           Trained */
     , (451600194, 22, 0, 2, 0,  10, 0, 0) /* Jump                Trained */
     , (451600194, 24, 0, 2, 0,  10, 0, 0) /* Run                 Trained */
     , (451600194, 31, 0, 3, 0, 110, 0, 0) /* CreatureEnchantment Specialized */
     , (451600194, 33, 0, 3, 0, 110, 0, 0) /* LifeMagic           Specialized */
     , (451600194, 34, 0, 3, 0, 110, 0, 0) /* WarMagic            Specialized */
     , (451600194, 45, 0, 3, 0,  80, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (451600194,  0,  4,  0,    0,   75,   33,   44,   65,   25,   25,   60,   75,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (451600194,  1,  4,  0,    0,   75,   33,   44,   65,   25,   25,   60,   75,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (451600194,  2,  4,  0,    0,   75,   33,   44,   65,   25,   25,   60,   75,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (451600194,  3,  4,  0,    0,   75,   33,   44,   65,   25,   25,   60,   75,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (451600194,  4,  4,  0,    0,   75,   33,   44,   65,   25,   25,   60,   75,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (451600194,  5,  4, 50, 0.75,   75,   33,   44,   65,   25,   25,   60,   75,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (451600194,  6,  4,  0,    0,   75,   33,   44,   65,   25,   25,   60,   75,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (451600194,  7,  4,  0,    0,   75,   33,   44,   65,   25,   25,   60,   75,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (451600194,  8,  4, 50, 0.75,   75,   33,   44,   65,   25,   25,   60,   75,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (451600194,    66,   2.05)  /* Shock Wave III */
     , (451600194,    77,   2.05)  /* Lightning Bolt III */
     , (451600194,   139,   2.02)  /* Lightning Volley III */
     , (451600194,  1292,   2.02)  /* Mana to Health Self III */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (451600194,  94)
     , (451600194, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451600194,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  88 /* LocalSignal */, 0, 1, NULL, 'ColoCritterKilled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451600194,  5 /* HeartBeat */,  0.075, NULL, 0x8000003C /* HandCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x10000051 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451600194,  5 /* HeartBeat */,      1, NULL, 0x8000003D /* NonCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,   5 /* Motion */, 0, 1, 0x41000014 /* Sleeping */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451600194,  9 /* Generation */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  88 /* LocalSignal */, 0, 1, NULL, 'ColoCritterSpawned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (451600194, 9,  3670,  0, 0, 0.1, False) /* Create Copper Heart (3670) for ContainTreasure */
     , (451600194, 9,     0,  0, 0, 0.9, False) /* Create nothing for ContainTreasure */
     , (451600194, 9,  6353,  0, 0, 0.03, False) /* Create Pyreal Mote (6353) for ContainTreasure */
     , (451600194, 9,     0,  0, 0, 0.97, False) /* Create nothing for ContainTreasure */;

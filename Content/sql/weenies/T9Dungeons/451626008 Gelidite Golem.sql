DELETE FROM `weenie` WHERE `class_Id` = 451626008;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451626008, 'T9golemgelidite', 10, '2022-08-22 03:09:27') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451626008,   1,         16) /* ItemType - Creature */
     , (451626008,   2,         13) /* CreatureType - Golem */
     , (451626008,   6,         -1) /* ItemsCapacity */
     , (451626008,   7,         -1) /* ContainersCapacity */
     , (451626008,  16,          1) /* ItemUseable - No */
     , (451626008,  25,        666) /* Level */
     , (451626008,  27,          0) /* ArmorType - None */
     , (451626008,  40,          2) /* CombatMode - Melee */
     , (451626008,  68,          9) /* TargetingTactic - Random, TopDamager */
	 , (451626008,  81,          1) /* MaxGeneratedObjects */
     , (451626008,  82,          1) /* InitGeneratedObjects */ 
     , (451626008,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (451626008, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (451626008, 146,   38000000) /* XpOverride */
	 , (451626008, 332,       6000) /* LuminanceAward */
	 , (451626008, 307,         280) /* DamageRating */
	 , (451626008, 386,         80) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451626008,   1, True ) /* Stuck */
     , (451626008,   6, True ) /* AiUsesMana */
     , (451626008,  11, False) /* IgnoreCollisions */
     , (451626008,  12, True ) /* ReportCollisions */
     , (451626008,  13, False) /* Ethereal */
     , (451626008,  14, True ) /* GravityStatus */
     , (451626008,  19, True ) /* Attackable */
     , (451626008,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451626008,   1,       5) /* HeartbeatInterval */
     , (451626008,   2,       0) /* HeartbeatTimestamp */
     , (451626008,   3,     0.9) /* HealthRate */
     , (451626008,   4,     0.5) /* StaminaRate */
     , (451626008,   5,       2) /* ManaRate */
     , (451626008,   6,     0.1) /* HealthUponResurrection */
     , (451626008,   7,    0.25) /* StaminaUponResurrection */
     , (451626008,   8,     0.3) /* ManaUponResurrection */
     , (451626008,  12,     0.5) /* Shade */
     , (451626008,  13,    0.79) /* ArmorModVsSlash */
     , (451626008,  14,     0.9) /* ArmorModVsPierce */
     , (451626008,  15,       1) /* ArmorModVsBludgeon */
     , (451626008,  16,    0.84) /* ArmorModVsCold */
     , (451626008,  17,    0.84) /* ArmorModVsFire */
     , (451626008,  18,    0.84) /* ArmorModVsAcid */
     , (451626008,  19,    0.84) /* ArmorModVsElectric */
     , (451626008,  31,      17) /* VisualAwarenessRange */
     , (451626008,  34,     2.3) /* PowerupTime */
     , (451626008,  64,    0.33) /* ResistSlash */
     , (451626008,  65,    0.67) /* ResistPierce */
     , (451626008,  66,       1) /* ResistBludgeon */
     , (451626008,  67,     0.5) /* ResistFire */
     , (451626008,  68,     0.5) /* ResistCold */
     , (451626008,  69,     0.5) /* ResistAcid */
     , (451626008,  70,     0.5) /* ResistElectric */
     , (451626008,  71,       1) /* ResistHealthBoost */
     , (451626008,  72,       1) /* ResistStaminaDrain */
     , (451626008,  73,       1) /* ResistStaminaBoost */
     , (451626008,  74,       1) /* ResistManaDrain */
     , (451626008,  75,       1) /* ResistManaBoost */
     , (451626008,  76,     0.3) /* Translucency */
     , (451626008,  80,       3) /* AiUseMagicDelay */
     , (451626008, 104,      10) /* ObviousRadarRange */
     , (451626008, 122,       2) /* AiAcquireHealth */
     , (451626008, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451626008,   1, 'Gelidite Golem') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451626008,   1, 0x020007D7) /* Setup */
     , (451626008,   2, 0x09000081) /* MotionTable */
     , (451626008,   3, 0x20000015) /* SoundTable */
     , (451626008,   4, 0x30000008) /* CombatTable */
     , (451626008,   6, 0x04000F68) /* PaletteBase */
     , (451626008,   8, 0x06001224) /* Icon */
     , (451626008,  22, 0x3400005A) /* PhysicsEffectTable */
     , (451626008,  35,      10022) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (451626008,   1, 3250, 0, 0) /* Strength */
     , (451626008,   2, 250, 0, 0) /* Endurance */
     , (451626008,   3, 150, 0, 0) /* Quickness */
     , (451626008,   4, 2150, 0, 0) /* Coordination */
     , (451626008,   5, 1150, 0, 0) /* Focus */
     , (451626008,   6, 150, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (451626008,   1,   55500, 0, 0, 55500) /* MaxHealth */
     , (451626008,   3,   220, 0, 0, 470) /* MaxStamina */
     , (451626008,   5,   275, 0, 0, 425) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (451626008,  6, 0, 3, 0, 260, 0, 0) /* MeleeDefense        Specialized */
     , (451626008,  7, 0, 3, 0, 357, 0, 0) /* MissileDefense      Specialized */
     , (451626008, 14, 0, 3, 0, 300, 0, 0) /* ArcaneLore          Specialized */
     , (451626008, 15, 0, 3, 0, 212, 0, 0) /* MagicDefense        Specialized */
     , (451626008, 20, 0, 2, 0, 100, 0, 0) /* Deception           Trained */
     , (451626008, 22, 0, 2, 0,  10, 0, 0) /* Jump                Trained */
     , (451626008, 24, 0, 2, 0,  10, 0, 0) /* Run                 Trained */
     , (451626008, 31, 0, 3, 0, 830, 0, 0) /* CreatureEnchantment Specialized */
     , (451626008, 33, 0, 3, 0, 1430, 0, 0) /* LifeMagic           Specialized */
     , (451626008, 34, 0, 3, 0, 1430, 0, 0) /* WarMagic            Specialized */
     , (451626008, 45, 0, 3, 0, 1175, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (451626008,  0,  4,  0,    0,  350,  277,  315,  350,  294,  294,  294,  294,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (451626008,  1,  4,  0,    0,  350,  277,  315,  350,  294,  294,  294,  294,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (451626008,  2,  4,  0,    0,  350,  277,  315,  350,  294,  294,  294,  294,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (451626008,  3,  4,  0,    0,  350,  277,  315,  350,  294,  294,  294,  294,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (451626008,  4,  4,  0,    0,  350,  277,  315,  350,  294,  294,  294,  294,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (451626008,  5,  4, 90, 0.75,  350,  277,  315,  350,  294,  294,  294,  294,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (451626008,  6,  4,  0,    0,  350,  277,  315,  350,  294,  294,  294,  294,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (451626008,  7,  4,  0,    0,  350,  277,  315,  350,  294,  294,  294,  294,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (451626008,  8,  4, 90, 0.75,  350,  277,  315,  350,  294,  294,  294,  294,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (451626008,   108,   2.08)  /* Frost Blast IV */
     , (451626008,   626,  2.048)  /* Life Magic Ineptitude Other IV */
     , (451626008,   651,  2.048)  /* War Magic Ineptitude Other V */
     , (451626008,  1064,  2.048)  /* Cold Vulnerability Other V */
     , (451626008,  1159,   2.01)  /* Heal Self IV */
     , (451626008,  1239,   2.01)  /* Drain Health Other III */
     , (451626008,  1326,  2.048)  /* Imperil Other V */
     , (451626008,  1342,  2.048)  /* Weakness Other V */
     , (451626008,  1595,  2.005)  /* Turn Blade III */
     , (451626008,  1618,  2.005)  /* Blood Loather III */
     , (451626008,  2728,   2.08)  /* Frost Arc IV */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (451626008,  94)
     , (451626008, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451626008,  5 /* HeartBeat */,  0.075, NULL, 0x8000003C /* HandCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x10000051 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451626008,  5 /* HeartBeat */,      1, NULL, 0x8000003D /* NonCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,   5 /* Motion */, 0, 1, 0x41000014 /* Sleeping */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (451626008, 9,  6876,  0, 0, 0.02, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (451626008, 9,     0,  0, 0, 0.98, False) /* Create nothing for ContainTreasure */
     , (451626008, 9,  6353,  0, 0, 0.04, False) /* Create Pyreal Mote (6353) for ContainTreasure */
     , (451626008, 9,     0,  0, 0, 0.96, False) /* Create nothing for ContainTreasure */;

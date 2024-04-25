DELETE FROM `weenie` WHERE `class_Id` = 490151;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490151, 'Outpost Dragon', 10, '2005-02-09 10:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490151,   1,         16) /* ItemType - Creature */
     , (490151,   2,          97) /* CreatureType - Hopeslayer */
     , (490151,   3,          9) /* PaletteTemplate - Grey */
     , (490151,   6,         -1) /* ItemsCapacity */
     , (490151,   7,         -1) /* ContainersCapacity */
     , (490151,  16,          1) /* ItemUseable - No */
     , (490151,  25,        899) /* Level */
	 , (490151, 103,          3) /* GeneratorDestructionType - Destroy */
	 , (490151,  81,          1) /* MaxGeneratedObjects */
     , (490151,  82,          0) /* InitGeneratedObjects */
     , (490151,  40,          1) /* CombatMode - NonCombat */
     , (490151,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (490151,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (490151, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (490151, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (490151, 146,      400000000) /* XpOverride */
	 , (490151, 386,         20) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490151,   1, True ) /* Stuck */
     , (490151,   6, False) /* AiUsesMana */
     , (490151,  11, False) /* IgnoreCollisions */
     , (490151,  12, True ) /* ReportCollisions */
     , (490151,  13, False) /* Ethereal */
     , (490151,  52, False) /* AiImmobile */
	 , (490151,  65, True ) /* IgnoreMagicResist */
     , (490151,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490151,   1,       5) /* HeartbeatInterval */
     , (490151,   2,       0) /* HeartbeatTimestamp */
     , (490151,   3,     100) /* HealthRate */
     , (490151,   4,       100) /* StaminaRate */
     , (490151,   5,       2) /* ManaRate */
     , (490151,  13,    1.15) /* ArmorModVsSlash */
     , (490151,  14,     1.1) /* ArmorModVsPierce */
     , (490151,  15,     1.1) /* ArmorModVsBludgeon */
     , (490151,  16,    1.25) /* ArmorModVsCold */
     , (490151,  17,    1.25) /* ArmorModVsFire */
     , (490151,  18,    1.25) /* ArmorModVsAcid */
     , (490151,  19,    1.25) /* ArmorModVsElectric */
     , (490151,  31,      35) /* VisualAwarenessRange */
     , (490151,  34,       1) /* PowerupTime */
	 , (490151,  39,       7) /* DefaultScale */
     , (490151,  36,       1) /* ChargeSpeed */
	 , (490151,  55,      210) /* HomeRadius */
     , (490151,  64,    0.15) /* ResistSlash */
     , (490151,  65,    0.75) /* ResistPierce */
     , (490151,  66,    0.85) /* ResistBludgeon */
     , (490151,  67,     0.1) /* ResistFire */
     , (490151,  68,    0.05) /* ResistCold */
     , (490151,  69,    0.05) /* ResistAcid */
     , (490151,  70,     0.5) /* ResistElectric */
     , (490151,  77,       1) /* PhysicsScriptIntensity */
     , (490151, 104,      35) /* ObviousRadarRange */
	 , (490151,  80,       3) /* AiUseMagicDelay */
	 , (490151, 166,       1) /* ResistNether */
     , (490151, 125,       1) /* ResistHealthDrain */
     , (490151, 151,       0.80) /* IgnoreShield */
	 , (490151,  43,      20) /* GeneratorRadius */
	 , (490151,  41,     600) /* RegenerationInterval */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490151,   1, 'Island Dragon') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490151,   1, 0x0200101A) /* Setup */
     , (490151,   2, 0x0900013F) /* MotionTable */
     , (490151,   3, 0x20000009) /* SoundTable */
     , (490151,   4, 0x30000012) /* CombatTable */
     , (490151,   6, 0x040016E8) /* PaletteBase */
     , (490151,   7, 0x100004FD) /* ClothingBase */
     , (490151,   8, 0x0600304D) /* Icon */
     , (490151,  19, 0x00000057) /* ActivationAnimation */
     , (490151,  22, 0x340000A9) /* PhysicsEffectTable */
     , (490151,  30,         84) /* PhysicsScript - BreatheFire */
     , (490151,  35,       10002) /* DeathTreasureType */;
	 
INSERT INTO `weenie_properties_i_i_d` (`object_Id`, `type`, `value`)
VALUES (490151,  16, 0x7F86400B) /* ActivationTarget */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490151,   1, 700, 0, 0) /* Strength */
     , (490151,   2, 700, 0, 0) /* Endurance */
     , (490151,   3, 700, 0, 0) /* Quickness */
     , (490151,   4, 700, 0, 0) /* Coordination */
     , (490151,   5, 700, 0, 0) /* Focus */
     , (490151,   6, 700, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490151,   1, 250000, 0, 0, 250000) /* MaxHealth */
     , (490151,   3, 89200, 0, 0, 90000) /* MaxStamina */
     , (490151,   5, 199200, 0, 0, 200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490151,  6, 0, 2, 0, 100, 0, 0) /* MeleeDefense        Trained */
     , (490151,  7, 0, 2, 0, 100, 0, 0) /* MissileDefense      Trained */
     , (490151, 15, 0, 2, 0, 100, 0, 0) /* MagicDefense        Trained */
     , (490151, 16, 0, 2, 0, 300, 0, 0) /* ManaConversion      Trained */
     , (490151, 31, 0, 2, 0, 700, 0, 0) /* CreatureEnchantment Trained */
     , (490151, 33, 0, 2, 0, 700, 0, 0) /* LifeMagic           Trained */
     , (490151, 34, 0, 2, 0, 800, 0, 0) /* WarMagic            Trained */
     , (490151, 41, 0, 2, 0, 140, 0, 0) /* TwoHandedCombat     Trained */
     , (490151, 44, 0, 2, 0, 900, 0, 0) /* HeavyWeapons        Trained */
     , (490151, 45, 0, 2, 0, 900, 0, 0) /* LightWeapons        Trained */
     , (490151, 46, 0, 2, 0, 900, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490151,  0,  2, 300, 0.75,  700,  805,  770,  770,  875,  875,  875,  875,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (490151, 16,  4,  0,    0,  700,  805,  770,  770,  875,  875,  875,  875,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (490151, 18,  1, 300,  0.5,  700,  805,  770,  770,  875,  875,  875,  875,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (490151, 19,  1,  0,    0,  700,  805,  770,  770,  875,  875,  875,  875,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (490151, 20,  1, 300, 0.75,  700,  805,  770,  770,  875,  875,  875,  875,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (490151, 22, 32, 300,  0.5,  700,  805,  770,  770,  875,  875,  875,  875,    0, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (490151,  6181,   2.05)  /* Corrosive Strike */
     , (490151,  3878,   2.1)  /* Acid Spit Arc 2 */
	 , (490151,  4481,   2.20)  /* Incantation of Acid Vulnerability Other */;
	  
INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (490151, 414) /* PLAYER_DEATH_EVENT */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490151,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  16 /* WorldBroadcast */, 0, 1, NULL, '%s has struck down the Island Dragon! The ground trembles as she falls. The Dragon''s Den entrance has been revealed. Keep your eyes peeled as the island may not have been cleared of these large beasts.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
, (@parent_id,  1,  15 /* Activate */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490151, 14 /* Taunt */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  19 /* CastSpellInstant */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4241 /* Island Dragon King Magic Shield Down */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  19 /* CastSpellInstant */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4243 /* Island Dragon King Melee Shield Down */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  19 /* CastSpellInstant */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4244 /* Island Dragon King's Missile Shield */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  17 /* LocalBroadcast */, 0, 1, NULL, 'The Island Dragon King shifts his protection to shield Missile.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490151, 14 /* Taunt */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  19 /* CastSpellInstant */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4241 /* Island Dragon King Magic Shield Down */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  19 /* CastSpellInstant */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4245 /* Island Dragon King Missile Shield Down */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  19 /* CastSpellInstant */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4242 /* Island Dragon King's Melee Shield */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  17 /* LocalBroadcast */, 0, 1, NULL, 'The Island Dragon King shifts his protection to shield Melee.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490151, 14 /* Taunt */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  19 /* CastSpellInstant */, 0.25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4243 /* Island Dragon King Melee Shield Down */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  19 /* CastSpellInstant */, 0.25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4245 /* Island Dragon King Missile Shield Down */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  19 /* CastSpellInstant */, 0.25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4240 /* Island Dragon King's Magic Shield */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  17 /* LocalBroadcast */, 0, 1, NULL, 'The Island Dragon King shifts his protection to shield Magic.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
	 
INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490151, 14 /* Taunt */, 0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  19 /* CastSpellInstant */, 0.25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4243 /* Island Dragon King Melee Shield Down */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  19 /* CastSpellInstant */, 0.25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4245 /* Island Dragon King Missile Shield Down */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  19 /* CastSpellInstant */, 0.25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4241 /* Island Dragon King's Magic Shield Down */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  17 /* LocalBroadcast */, 0, 1, NULL, 'The Island Dragon King drops his protections.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (490151, 9, 490235,  0, 0, 1, False) /* Create Splinter of Anger Gen (72104) for ContainTreasure */
, (490151, 9, 490235,  0, 0, 1, False) /* Create Splinter of Anger Gen (72104) for ContainTreasure */
	, (490151, 9, 490235,  0, 0, 1, False) /* Create Splinter of Anger Gen (72104) for ContainTreasure */ 
, (490151, 9, 490235,  0, 0, 1, False) /* Create Splinter of Anger Gen (72104) for ContainTreasure */
, (490151, 9, 490235,  0, 0, 1, False) /* Create Splinter of Anger Gen (72104) for ContainTreasure */
, (490151, 9, 490235,  0, 0, 1, False) /* Create Splinter of Anger Gen (72104) for ContainTreasure */
, (490151, 9, 490235,  0, 0, 1, False) /* Create Splinter of Anger Gen (72104) for ContainTreasure */
, (490151, 9, 490235,  0, 0, 1, False) /* Create Splinter of Anger Gen (72104) for ContainTreasure */
, (490151, 9, 490235,  0, 0, 1, False) /* Create Splinter of Anger Gen (72104) for ContainTreasure */;
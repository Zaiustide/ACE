DELETE FROM `weenie` WHERE `class_Id` = 451610938;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451610938, 'T9_humanchampionarcher-xp', 10, '2005-02-09 10:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451610938,   1,         16) /* ItemType - Creature */
     , (451610938,   2,         31) /* CreatureType - Human */
     , (451610938,   6,         -1) /* ItemsCapacity */
     , (451610938,   7,         -1) /* ContainersCapacity */
     , (451610938,   8,        120) /* Mass */
     , (451610938,  16,          1) /* ItemUseable - No */
     , (451610938,  25,        666) /* Level */
     , (451610938,  27,          0) /* ArmorType - None */
     , (451610938,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
	 , (451610938,  81,          1) /* MaxGeneratedObjects */
     , (451610938,  82,          1) /* InitGeneratedObjects */
     , (451610938,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (451610938, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (451610938, 133,          2) /* ShowableOnRadar - ShowMovement */
	 , (451610938, 307,      3000) /* DamageRating */
	 , (451610938, 308,          6) /* DamageResistRating */
	 , (451610938, 332,     100000) /* LuminanceAward */
     , (451610938, 146,  250000000) /* XpOverride */
	 , (451610938, 386,         15) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451610938,   1, True ) /* Stuck */
     , (451610938,  11, False) /* IgnoreCollisions */
     , (451610938,  12, True ) /* ReportCollisions */
     , (451610938,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451610938,   1,       5) /* HeartbeatInterval */
     , (451610938,   2,       0) /* HeartbeatTimestamp */
     , (451610938,   3,    0.16) /* HealthRate */
     , (451610938,   4,       5) /* StaminaRate */
     , (451610938,   5,       1) /* ManaRate */
     , (451610938,  13,     0.9) /* ArmorModVsSlash */
     , (451610938,  14,       1) /* ArmorModVsPierce */
     , (451610938,  15,     1.1) /* ArmorModVsBludgeon */
     , (451610938,  16,     0.4) /* ArmorModVsCold */
     , (451610938,  17,     0.4) /* ArmorModVsFire */
     , (451610938,  18,       1) /* ArmorModVsAcid */
     , (451610938,  19,     0.6) /* ArmorModVsElectric */
     , (451610938,  31,      15) /* VisualAwarenessRange */
	 , (451610938,  43,       2) /* GeneratorRadius */
     , (451610938,  64,    0.35) /* ResistSlash */
     , (451610938,  65,    0.35) /* ResistPierce */
     , (451610938,  66,    0.35) /* ResistBludgeon */
     , (451610938,  67,    0.35) /* ResistFire */
     , (451610938,  68,    0.35) /* ResistCold */
     , (451610938,  69,    0.35) /* ResistAcid */
     , (451610938,  70,    0.35) /* ResistElectric */
     , (451610938,  71,       1) /* ResistHealthBoost */
     , (451610938,  72,       1) /* ResistStaminaDrain */
     , (451610938,  73,       1) /* ResistStaminaBoost */
     , (451610938,  74,       1) /* ResistManaDrain */
     , (451610938,  75,       1) /* ResistManaBoost */
     , (451610938, 104,      10) /* ObviousRadarRange */
     , (451610938, 117,     0.5) /* FocusedProbability */
     , (451610938, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451610938,   1, 'Li Fanli') /* Name */
     , (451610938,   3, 'Male') /* Sex */
     , (451610938,   4, 'Sho') /* HeritageGroup */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451610938,   1, 0x02000001) /* Setup */
     , (451610938,   2, 0x09000001) /* MotionTable */
     , (451610938,   3, 0x20000001) /* SoundTable */
     , (451610938,   4, 0x30000000) /* CombatTable */
     , (451610938,   8, 0x06001036) /* Icon */
     , (451610938,  22, 0x34000004) /* PhysicsEffectTable */
     , (451610938,  32,      30000) /* WieldedTreasureType */
     , (451610938,  35,      10023) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (451610938,   1, 20000, 0, 0) /* Strength */
     , (451610938,   2, 850, 0, 0) /* Endurance */
     , (451610938,   3, 850, 0, 0) /* Quickness */
     , (451610938,   4, 1200, 0, 0) /* Coordination */
     , (451610938,   5, 650, 0, 0) /* Focus */
     , (451610938,   6, 650, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (451610938,   1,  22000, 0, 0, 22000) /* MaxHealth */
     , (451610938,   3,   4000, 0, 0, 4000) /* MaxStamina */
     , (451610938,   5,   4000, 0, 0, 4000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (451610938,  2, 0, 3, 0, 980, 0, 705.4965943564291) /* Bow                 Specialized */
     , (451610938,  6, 0, 3, 0, 200, 0, 705.4965943564291) /* MeleeDefense        Specialized */
     , (451610938,  7, 0, 3, 0, 200, 0, 705.4965943564291) /* MissileDefense      Specialized */
     , (451610938, 13, 0, 3, 0, 980, 0, 705.4965943564291) /* UnarmedCombat       Specialized */
     , (451610938, 14, 0, 3, 0, 250, 0, 705.4965943564291) /* ArcaneLore          Specialized */
     , (451610938, 15, 0, 3, 0, 200, 0, 705.4965943564291) /* MagicDefense        Specialized */
     , (451610938, 20, 0, 3, 0, 150, 0, 705.4965943564291) /* Deception           Specialized */
     , (451610938, 24, 0, 3, 0, 820, 0, 705.4965943564291) /* Run                 Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (451610938,  0,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (451610938,  1,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (451610938,  2,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (451610938,  3,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (451610938,  4,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (451610938,  5,  4,  2, 0.75,  225,  203,  225,  248,   90,   90,  225,  135,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (451610938,  6,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (451610938,  7,  4,  0,    0,  225,  203,  225,  248,   90,   90,  225,  135,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (451610938,  8,  4,  2, 0.75,  225,  203,  225,  248,   90,   90,  225,  135,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (451610938,  94)
     , (451610938, 414);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (451610938, 9, 1548801,  1, 0,  0.08, False) /* 1548801 Potion of Resistance */
     , (451610938, 9,      0,  0, 0,   0.92, False)    /* Create nothing for ContainTreasure */
	 , (451610938, 9, 490248,  0, 0,   0.9, False) /* 4200028 Set Randomizer Morph Gem */
	 , (451610938, 9,      0,  0, 0,   0.1, False)    /* Create nothing for ContainTreasure */
	 , (451610938, 9, 600032,  1, 0, 0.1, False) /* Empyrean Tailoring Scissors */
	 , (451610938, 9, 600035,  1, 0, 0.05, False) /* 600035 Durable Empyrean Forging Hammer */
	 , (451610938, 9, 600034,  1, 0, 0.025, False) /* 600034 Gem of Damage Protection */
	 , (451610938, 9, 600033,  1, 0, 0.025, False) /* 600033 Gem of Damage Enhancement */ 
	 , (451610938, 9,      0,  0, 0,   0.8, False)    /* Create nothing for ContainTreasure */
	 , (451610938, 9, 1548806,  1, 0,  0.05, False) /* 1548806 Rare Damage Reduction Morph Gem */
	 , (451610938, 9, 1548805,  1, 0,  0.05, False) /* 1548805 Rare Damage Boost Morph Gem */ 
	 , (451610938, 9,      0,  0, 0,    0.9, False)    /* Create nothing for ContainTreasure */
	 , (451610938, 9, 490273,  1, 0,   0.15, False) /* 490273 Rare Gem of Critical Damage Reduction */
	 , (451610938, 9, 490272,  1, 0,   0.15, False) /* 490272 Rare Gem of Critical Damage */ 
	 , (451610938, 9,      0,  0, 0,    0.7, False)    /* Create nothing for ContainTreasure */
	 , (451610938, 9, 41541201,  1, 0, 0.75, False) /* 41541201 Paragon Legendary Quest Gem */ 
	 , (451610938, 9,      0,  0, 0,   0.25, False)    /* Create nothing for ContainTreasure */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (451610938, -1, 451610940, 0, 1, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) /* Itala the Knife (451610940) */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451610938,  9 /* Generate */,  1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  72 /* Generate */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

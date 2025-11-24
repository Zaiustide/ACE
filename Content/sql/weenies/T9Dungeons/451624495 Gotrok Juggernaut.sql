DELETE FROM `weenie` WHERE `class_Id` = 451624495;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451624495, 'T9_lugianjuggernautrenegade', 10, '2022-12-04 19:04:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451624495,   1,         16) /* ItemType - Creature */
     , (451624495,   2,         70) /* CreatureType - GotrokLugian */
     , (451624495,   3,         14) /* PaletteTemplate - Red */
     , (451624495,   6,         -1) /* ItemsCapacity */
     , (451624495,   7,         -1) /* ContainersCapacity */
     , (451624495,   8,       8000) /* Mass */
     , (451624495,  16,          1) /* ItemUseable - No */
     , (451624495,  25,        666) /* Level */
     , (451624495,  27,          0) /* ArmorType - None */
     , (451624495,  40,          2) /* CombatMode - Melee */
     , (451624495,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (451624495,  72,          6) /* FriendType - Tumerok */
	 , (451624495,  81,          1) /* MaxGeneratedObjects */
     , (451624495,  82,          1) /* InitGeneratedObjects */  	 
     , (451624495,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (451624495, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (451624495, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (451624495, 140,          1) /* AiOptions - CanOpenDoors */
     , (451624495, 146,   45000000) /* XpOverride */
	 , (451624495, 332,       6000) /* LuminanceAward */
	 , (451624495, 307,        700) /* DamageRating */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451624495,   1, True ) /* Stuck */
     , (451624495,  11, False) /* IgnoreCollisions */
     , (451624495,  12, True ) /* ReportCollisions */
     , (451624495,  13, False) /* Ethereal */
     , (451624495,  14, True ) /* GravityStatus */
     , (451624495,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451624495,   1,      10) /* HeartbeatInterval */
     , (451624495,   2,       0) /* HeartbeatTimestamp */
     , (451624495,   3,     0.9) /* HealthRate */
     , (451624495,   4,       4) /* StaminaRate */
     , (451624495,   5,       2) /* ManaRate */
     , (451624495,  12,     0.5) /* Shade */
     , (451624495,  13,    0.75) /* ArmorModVsSlash */
     , (451624495,  14,    0.57) /* ArmorModVsPierce */
     , (451624495,  15,    0.66) /* ArmorModVsBludgeon */
     , (451624495,  16,     0.5) /* ArmorModVsCold */
     , (451624495,  17,    0.25) /* ArmorModVsFire */
     , (451624495,  18,    0.86) /* ArmorModVsAcid */
     , (451624495,  19,     0.5) /* ArmorModVsElectric */
     , (451624495,  31,      40) /* VisualAwarenessRange */
     , (451624495,  34,       3) /* PowerupTime */
     , (451624495,  36,       1) /* ChargeSpeed */
     , (451624495,  64,    0.66) /* ResistSlash */
     , (451624495,  65,    0.85) /* ResistPierce */
     , (451624495,  66,     0.5) /* ResistBludgeon */
     , (451624495,  67,    0.25) /* ResistFire */
     , (451624495,  68,    0.45) /* ResistCold */
     , (451624495,  69,    0.65) /* ResistAcid */
     , (451624495,  70,    0.95) /* ResistElectric */
     , (451624495,  71,       1) /* ResistHealthBoost */
     , (451624495,  72,       1) /* ResistStaminaDrain */
     , (451624495,  73,       1) /* ResistStaminaBoost */
     , (451624495,  74,       1) /* ResistManaDrain */
     , (451624495,  75,       1) /* ResistManaBoost */
     , (451624495, 104,      10) /* ObviousRadarRange */
     , (451624495, 117,     0.5) /* FocusedProbability */
     , (451624495, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451624495,   1, 'Gotrok Juggernaut') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451624495,   1, 0x02000A0B) /* Setup */
     , (451624495,   2, 0x09000006) /* MotionTable */
     , (451624495,   3, 0x2000000A) /* SoundTable */
     , (451624495,   4, 0x30000003) /* CombatTable */
     , (451624495,   6, 0x040010C6) /* PaletteBase */
     , (451624495,   7, 0x1000048A) /* ClothingBase */
     , (451624495,   8, 0x06001037) /* Icon */
     , (451624495,  22, 0x3400001E) /* PhysicsEffectTable */
     , (451624495,  32,        436) /* WieldedTreasureType */
     , (451624495,  35,      10020) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (451624495,   1, 650, 0, 0) /* Strength */
     , (451624495,   2, 340, 0, 0) /* Endurance */
     , (451624495,   3, 305, 0, 0) /* Quickness */
     , (451624495,   4, 310, 0, 0) /* Coordination */
     , (451624495,   5, 200, 0, 0) /* Focus */
     , (451624495,   6, 240, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (451624495,   1, 16590, 0, 0, 16760) /* MaxHealth */
     , (451624495,   3,  8670, 0, 0, 9010) /* MaxStamina */
     , (451624495,   5,     0, 0, 0, 240) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (451624495,  6, 0, 2, 0, 450, 0, 0) /* MeleeDefense        Trained */
     , (451624495,  7, 0, 2, 0, 500, 0, 0) /* MissileDefense      Trained */
     , (451624495, 15, 0, 2, 0, 300, 0, 0) /* MagicDefense        Trained */
     , (451624495, 20, 0, 2, 0, 100, 0, 0) /* Deception           Trained */
     , (451624495, 24, 0, 2, 0,  45, 0, 0) /* Run                 Trained */
     , (451624495, 44, 0, 2, 0, 650, 0, 0) /* HeavyWeapons        Trained */
     , (451624495, 45, 0, 2, 0, 650, 0, 0) /* LightWeapons        Trained */
     , (451624495, 47, 0, 2, 0, 450, 0, 0) /* MissileWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (451624495,  0,  4,  2,  0.1,  450,  338,  257,  297,  225,  113,  387,  225,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (451624495,  1,  4, 40,  0.1,  450,  338,  257,  297,  225,  113,  387,  225,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (451624495,  2,  4,  2,  0.1,  450,  338,  257,  297,  225,  113,  387,  225,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (451624495,  3,  4,  2,  0.1,  450,  338,  257,  297,  225,  113,  387,  225,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (451624495,  4,  4,  2,  0.1,  450,  338,  257,  297,  225,  113,  387,  225,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (451624495,  5,  4, 100,  0.1,  450,  338,  257,  297,  225,  113,  387,  225,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (451624495,  6,  4,  2,  0.1,  450,  338,  257,  297,  225,  113,  387,  225,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (451624495,  7,  4, 25,  0.1,  450,  338,  257,  297,  225,  113,  387,  225,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (451624495,  8,  4, 100,  0.1,  450,  338,  257,  297,  225,  113,  387,  225,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (451624495,  94)
     , (451624495, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451624495,  3 /* Death */,  0.0125, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  72 /* Generate */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (451624495, 1, 451610938, 0, 1, 1, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) /* Generate Li Fanli (451610938) */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451624495, 16 /* KillTaunt */,    0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Crumple beneath my blows, small one!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451624495, 18 /* Scream */,    0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   8 /* Say */, 0, 0, NULL, 'You attack us? Here? You will not leave this place alive.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451624495, 21 /* ResistSpell */,   0.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'A magic light show? You should probably run now mage.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (451624495, 9,  6876,  0, 0, 0.02, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (451624495, 9,     0,  0, 0, 0.98, False) /* Create nothing for ContainTreasure */
     , (451624495, 9, 34276,  0, 0, 0.05, False) /* Create Ancient Empyrean Trinket (34276) for ContainTreasure */
     , (451624495, 9,     0,  0, 0, 0.95, False) /* Create nothing for ContainTreasure */;

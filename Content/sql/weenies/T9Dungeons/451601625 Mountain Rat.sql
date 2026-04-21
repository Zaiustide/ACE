DELETE FROM `weenie` WHERE `class_Id` = 451601625;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451601625, 'T9ratmountain', 10, '2022-08-22 03:09:27') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451601625,   1,         16) /* ItemType - Creature */
     , (451601625,   2,         10) /* CreatureType - Rat */
     , (451601625,   3,         51) /* PaletteTemplate - MidGrey */
     , (451601625,   6,         -1) /* ItemsCapacity */
     , (451601625,   7,         -1) /* ContainersCapacity */
     , (451601625,  16,          1) /* ItemUseable - No */
     , (451601625,  25,        666) /* Level */
     , (451601625,  27,          0) /* ArmorType - None */
     , (451601625,  40,          2) /* CombatMode - Melee */
     , (451601625,  68,          5) /* TargetingTactic - Random, LastDamager */
	 , (451601625,  81,          1) /* MaxGeneratedObjects */
     , (451601625,  82,          1) /* InitGeneratedObjects */	 
     , (451601625,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (451601625, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (451601625, 146,   35000000) /* XpOverride */
	 , (451601625, 332,       6000) /* LuminanceAward */
	 , (451601625, 307,         4480) /* DamageRating */
	 , (451601625, 314,         120) /* CritDamageRating */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451601625,   1, True ) /* Stuck */
     , (451601625,  11, False) /* IgnoreCollisions */
     , (451601625,  12, True ) /* ReportCollisions */
     , (451601625,  13, False) /* Ethereal */
     , (451601625,  14, True ) /* GravityStatus */
     , (451601625,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451601625,   1,       5) /* HeartbeatInterval */
     , (451601625,   2,       0) /* HeartbeatTimestamp */
     , (451601625,   3,     0.3) /* HealthRate */
     , (451601625,   4,       5) /* StaminaRate */
     , (451601625,   5,       2) /* ManaRate */
     , (451601625,  12,     0.5) /* Shade */
     , (451601625,  13,    0.18) /* ArmorModVsSlash */
     , (451601625,  14,    0.38) /* ArmorModVsPierce */
     , (451601625,  15,     0.8) /* ArmorModVsBludgeon */
     , (451601625,  16,    0.38) /* ArmorModVsCold */
     , (451601625,  17,    0.55) /* ArmorModVsFire */
     , (451601625,  18,     0.8) /* ArmorModVsAcid */
     , (451601625,  19,     0.8) /* ArmorModVsElectric */
     , (451601625,  31,      25) /* VisualAwarenessRange */
     , (451601625,  34,       2) /* PowerupTime */
     , (451601625,  36,       1) /* ChargeSpeed */
     , (451601625,  39,       3) /* DefaultScale */
     , (451601625,  64,     0.8) /* ResistSlash */
     , (451601625,  65,    0.85) /* ResistPierce */
     , (451601625,  66,       1) /* ResistBludgeon */
     , (451601625,  67,    0.85) /* ResistFire */
     , (451601625,  68,    0.85) /* ResistCold */
     , (451601625,  69,       1) /* ResistAcid */
     , (451601625,  70,       1) /* ResistElectric */
     , (451601625,  71,       1) /* ResistHealthBoost */
     , (451601625,  72,       1) /* ResistStaminaDrain */
     , (451601625,  73,       1) /* ResistStaminaBoost */
     , (451601625,  74,       1) /* ResistManaDrain */
     , (451601625,  75,       1) /* ResistManaBoost */
     , (451601625,  77,       1) /* PhysicsScriptIntensity */
     , (451601625, 104,      10) /* ObviousRadarRange */
     , (451601625, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451601625,   1, 'Mountain Rat') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451601625,   1, 0x0200003D) /* Setup */
     , (451601625,   2, 0x0900000E) /* MotionTable */
     , (451601625,   3, 0x2000000F) /* SoundTable */
     , (451601625,   4, 0x30000013) /* CombatTable */
     , (451601625,   6, 0x040001B4) /* PaletteBase */
     , (451601625,   7, 0x10000063) /* ClothingBase */
     , (451601625,   8, 0x0600103B) /* Icon */
     , (451601625,  19, 0x00000054) /* ActivationAnimation */
     , (451601625,  22, 0x34000023) /* PhysicsEffectTable */
     , (451601625,  30,         84) /* PhysicsScript - BreatheFlame */
     , (451601625,  35,      10022) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (451601625,   1, 4170, 0, 0) /* Strength */
     , (451601625,   2, 100, 0, 0) /* Endurance */
     , (451601625,   3, 120, 0, 0) /* Quickness */
     , (451601625,   4, 1100, 0, 0) /* Coordination */
     , (451601625,   5,  70, 0, 0) /* Focus */
     , (451601625,   6,  50, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (451601625,   1,   28000, 0, 0, 28000) /* MaxHealth */
     , (451601625,   3,   100, 0, 0, 200) /* MaxStamina */
     , (451601625,   5,     0, 0, 0, 50) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (451601625,  6, 0, 3, 0,  474, 0, 0) /* MeleeDefense        Specialized */
     , (451601625,  7, 0, 3, 0,  494, 0, 0) /* MissileDefense      Specialized */
     , (451601625, 15, 0, 3, 0,  474, 0, 0) /* MagicDefense        Specialized */
     , (451601625, 20, 0, 2, 0,  550, 0, 0) /* Deception           Trained */
     , (451601625, 22, 0, 2, 0,  40, 0, 0) /* Jump                Trained */
     , (451601625, 24, 0, 2, 0,  540, 0, 0) /* Run                 Trained */
     , (451601625, 45, 0, 3, 0, 2100, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (451601625,  0,  2,  2, 0.75,   20,    4,    8,   16,    8,   11,   16,   16,    0, 1, 0.33,  0.4,    0, 0.33,  0.4,    0, 0.33,  0.4,    0, 0.33,  0.4,    0) /* Head */
     , (451601625, 16,  4,  4, 0.75,   20,    4,    8,   16,    8,   11,   16,   16,    0, 2, 0.67,  0.4, 0.75, 0.67,  0.4, 0.75, 0.67,  0.4, 0.75, 0.67,  0.4, 0.75) /* Torso */
     , (451601625, 17,  4,  0,    0,   15,    3,    6,   12,    6,    8,   12,   12,    0, 3,    0,  0.2, 0.25,    0,  0.2, 0.25,    0,  0.2, 0.25,    0,  0.2, 0.25) /* Tail */
     , (451601625, 22, 16, 25,  0.5,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (451601625,  94)
     , (451601625, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451601625,  5 /* HeartBeat */,    0.1, NULL, 0x8000003C /* HandCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x10000051 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451601625,  5 /* HeartBeat */,  0.175, NULL, 0x8000003C /* HandCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x10000052 /* Twitch2 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451601625,  5 /* HeartBeat */,    0.1, NULL, 0x8000003D /* NonCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x10000051 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451601625,  5 /* HeartBeat */,  0.175, NULL, 0x8000003D /* NonCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x10000052 /* Twitch2 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (451601625, 8,  5794,  0, 0, 0.07, False) /* Create Hot Pepper (5794) for Treasure */
     , (451601625, 9,     0,  0, 0, 0.93, False) /* Create nothing for ContainTreasure */;

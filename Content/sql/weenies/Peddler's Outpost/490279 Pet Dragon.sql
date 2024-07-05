DELETE FROM `weenie` WHERE `class_Id` = 490279;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490279, 'ace490279-PetDragon', 69, '2021-11-01 00:00:00') /* Pet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490279,   1,         16) /* ItemType - Creature */
     , (490279,   2,         15) /* CreatureType - Penguin */
	 , (490279,   3,          9) /* PaletteTemplate - Grey */
     , (490279,   6,         -1) /* ItemsCapacity */
     , (490279,   7,         -1) /* ContainersCapacity */
     , (490279,  16,          1) /* ItemUseable - No */
     , (490279,  25,          5) /* Level */
     , (490279,  27,          0) /* ArmorType - None */
     , (490279,  93,    2098196) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (490279,  95,          8) /* RadarBlipColor - Yellow */
     , (490279, 133,          1) /* ShowableOnRadar - ShowNever */
     , (490279, 134,         16) /* PlayerKillerStatus - RubberGlue */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490279,   1, True ) /* Stuck */
     , (490279,   8, True ) /* AllowGive */
     , (490279,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490279,   1,       5) /* HeartbeatInterval */
     , (490279,   2,       0) /* HeartbeatTimestamp */
     , (490279,   3,   0.067) /* HealthRate */
     , (490279,   4,       5) /* StaminaRate */
     , (490279,   5,       2) /* ManaRate */
     , (490279,  12,       0) /* Shade */
     , (490279,  13,    0.34) /* ArmorModVsSlash */
     , (490279,  14,    0.18) /* ArmorModVsPierce */
     , (490279,  15,    0.26) /* ArmorModVsBludgeon */
     , (490279,  16,    0.34) /* ArmorModVsCold */
     , (490279,  17,     0.6) /* ArmorModVsFire */
     , (490279,  18,    0.18) /* ArmorModVsAcid */
     , (490279,  19,     0.6) /* ArmorModVsElectric */
     , (490279,  31,      50) /* VisualAwarenessRange */
     , (490279,  34,       4) /* PowerupTime */
     , (490279,  36,       1) /* ChargeSpeed */
     , (490279,  39,     0.7) /* DefaultScale */
     , (490279,  64,    0.86) /* ResistSlash */
     , (490279,  65,     0.8) /* ResistPierce */
     , (490279,  66,     0.8) /* ResistBludgeon */
     , (490279,  67,       1) /* ResistFire */
     , (490279,  68,    0.86) /* ResistCold */
     , (490279,  69,     0.8) /* ResistAcid */
     , (490279,  70,       1) /* ResistElectric */
     , (490279,  71,       1) /* ResistHealthBoost */
     , (490279,  72,       1) /* ResistStaminaDrain */
     , (490279,  73,       1) /* ResistStaminaBoost */
     , (490279,  74,       1) /* ResistManaDrain */
     , (490279,  75,       1) /* ResistManaBoost */
     , (490279, 104,      10) /* ObviousRadarRange */
     , (490279, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490279,   1, 'Pet Island Dragon') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490279,   1, 0x0200101A) /* Setup */
     , (490279,   2, 0x0900013F) /* MotionTable */
     , (490279,   3, 0x20000009) /* SoundTable */
     , (490279,   4, 0x30000012) /* CombatTable */
     , (490279,   6, 0x040016E8) /* PaletteBase */
     , (490279,   7, 0x100004FD) /* ClothingBase */
     , (490279,   8, 0x0600304D) /* Icon */
     , (490279,  19, 0x00000057) /* ActivationAnimation */
     , (490279,  22, 0x340000A9) /* PhysicsEffectTable */
     , (490279,  30,         84) /* PhysicsScript - BreatheFire */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490279,   1, 460, 0, 0) /* Strength */
     , (490279,   2, 470, 0, 0) /* Endurance */
     , (490279,   3, 310, 0, 0) /* Quickness */
     , (490279,   4, 330, 0, 0) /* Coordination */
     , (490279,   5, 260, 0, 0) /* Focus */
     , (490279,   6, 260, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490279,   1,   530, 0, 0, 1295) /* MaxHealth */
     , (490279,   3,   500, 0, 0, 1470) /* MaxStamina */
     , (490279,   5,     0, 0, 0, 260) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490279,  6, 0, 3, 0,   0, 0, 792.718864834351) /* MeleeDefense        Specialized */
     , (490279,  7, 0, 3, 0,   0, 0, 792.718864834351) /* MissileDefense      Specialized */
     , (490279, 13, 0, 3, 0,   0, 0, 792.718864834351) /* UnarmedCombat       Specialized */
     , (490279, 15, 0, 3, 0,  23, 0, 792.718864834351) /* MagicDefense        Specialized */
     , (490279, 20, 0, 2, 0,   1, 0, 792.718864834351) /* Deception           Trained */
     , (490279, 24, 0, 2, 0,  10, 0, 792.718864834351) /* Run                 Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490279,  0,  2, 180,    0,  570,  513,  570,  570,  570,  570,  570,  570,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (490279,  1,  2,  0,    0,  570,  513,  570,  570,  570,  570,  570,  570,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (490279,  2,  2,  0,    0,  570,  513,  570,  570,  570,  570,  570,  570,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (490279,  3,  2,  0,    0,  570,  513,  570,  570,  570,  570,  570,  570,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (490279,  4,  2,  0,    0,  570,  513,  570,  570,  570,  570,  570,  570,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (490279,  5,  1, 180,  0.4,  570,  513,  570,  570,  570,  570,  570,  570,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (490279,  6,  2,  0,    0,  570,  513,  570,  570,  570,  570,  570,  570,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (490279,  7,  2,  0,    0,  570,  513,  570,  570,  570,  570,  570,  570,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (490279,  8,  4, 180,  0.4,  570,  513,  570,  570,  570,  570,  570,  570,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */
     , (490279, 22, 32, 155,  0.4,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;


INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490279,  6 /* Give */,      1, 1000002 /* Cookie */, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  13 /* TextDirect */, 0, 1, NULL, '(Vitae Removed) Now get back in there and make me proud...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  90 /* RemoveVitae */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490279,  6 /* Give */,      1, 1000003 /* Cookie */, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  13 /* TextDirect */, 0, 1, NULL, '(Vitae Removed, PK Flagged) Now get back in there and make me proud...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  90 /* RemoveVitae */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  53 /* SetIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  
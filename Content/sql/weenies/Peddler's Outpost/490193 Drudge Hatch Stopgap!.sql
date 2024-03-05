DELETE FROM `weenie` WHERE `class_Id` = 490193;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490193, 'drudgehatchnpcstopgap', 10, '2021-11-07 08:12:46') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490193,   1,         16) /* ItemType - Creature */
     , (490193,   2,         31) /* CreatureType - Human */
     , (490193,   6,         -1) /* ItemsCapacity */
     , (490193,   7,         -1) /* ContainersCapacity */
     , (490193,   8,        120) /* Mass */
     , (490193,  16,         32) /* ItemUseable - Remote */
     , (490193,  25,         15) /* Level */
     , (490193,  27,          0) /* ArmorType - None */
     , (490193,  93,    6292508) /* PhysicsState - Ethereal, ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (490193,  95,          8) /* RadarBlipColor - Yellow */
     , (490193, 133,          0) /* ShowableOnRadar - Undefined */
     , (490193, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (490193, 146,        307) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490193,   1, True ) /* Stuck */
     , (490193,   8, True ) /* AllowGive */
     , (490193,  12, True ) /* ReportCollisions */
     , (490193,  13, True ) /* Ethereal */
     , (490193,  18, True ) /* Visibility */
     , (490193,  19, False) /* Attackable */
     , (490193,  41, True ) /* ReportCollisionsAsEnvironment */
     , (490193,  42, True ) /* AllowEdgeSlide */
     , (490193,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490193,   1,       5) /* HeartbeatInterval */
     , (490193,   2,       0) /* HeartbeatTimestamp */
     , (490193,   3,    0.16) /* HealthRate */
     , (490193,   4,       5) /* StaminaRate */
     , (490193,   5,       1) /* ManaRate */
     , (490193,  13,     0.9) /* ArmorModVsSlash */
     , (490193,  14,       1) /* ArmorModVsPierce */
     , (490193,  15,     1.1) /* ArmorModVsBludgeon */
     , (490193,  16,     0.4) /* ArmorModVsCold */
     , (490193,  17,     0.4) /* ArmorModVsFire */
     , (490193,  18,       1) /* ArmorModVsAcid */
     , (490193,  19,     0.6) /* ArmorModVsElectric */
     , (490193,  54,       3) /* UseRadius */
     , (490193,  64,       1) /* ResistSlash */
     , (490193,  65,       1) /* ResistPierce */
     , (490193,  66,       1) /* ResistBludgeon */
     , (490193,  67,       1) /* ResistFire */
     , (490193,  68,       1) /* ResistCold */
     , (490193,  69,       1) /* ResistAcid */
     , (490193,  70,       1) /* ResistElectric */
     , (490193,  71,       1) /* ResistHealthBoost */
     , (490193,  72,       1) /* ResistStaminaDrain */
     , (490193,  73,       1) /* ResistStaminaBoost */
     , (490193,  74,       1) /* ResistManaDrain */
     , (490193,  75,       1) /* ResistManaBoost */
     , (490193, 104,      10) /* ObviousRadarRange */
     , (490193, 125,       1) /* ResistHealthDrain */
     , (490193, 131,       1) /* EmotePriority */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490193,   1, 'Drudge Hatch Stopgap!') /* Name */
     , (490193,   3, 'Male') /* Sex */
     , (490193,   4, 'Sho') /* HeritageGroup */
     , (490193,   5, 'Stopgap') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490193,   1, 0x02000001) /* Setup */
     , (490193,   2, 0x09000001) /* MotionTable */
     , (490193,   3, 0x20000001) /* SoundTable */
     , (490193,   4, 0x30000000) /* CombatTable */
     , (490193,   8, 0x06001036) /* Icon */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490193,   1,  90, 0, 0) /* Strength */
     , (490193,   2, 100, 0, 0) /* Endurance */
     , (490193,   3,  75, 0, 0) /* Quickness */
     , (490193,   4, 120, 0, 0) /* Coordination */
     , (490193,   5, 140, 0, 0) /* Focus */
     , (490193,   6, 130, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490193,   1,    10, 0, 0, 60) /* MaxHealth */
     , (490193,   3,    10, 0, 0, 110) /* MaxStamina */
     , (490193,   5,    10, 0, 0, 140) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490193,  6, 0, 2, 0,   1, 0, 633.380416853002) /* MeleeDefense        Trained */
     , (490193,  7, 0, 2, 0,   1, 0, 633.380416853002) /* MissileDefense      Trained */
     , (490193, 13, 0, 2, 0,   1, 0, 633.380416853002) /* UnarmedCombat       Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490193,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (490193,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (490193,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (490193,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (490193,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (490193,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (490193,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (490193,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (490193,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490193,  5 /* HeartBeat */,      1, NULL, 0x8000003D /* NonCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 2, 1, 0x13000087 /* Wave */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  24 /* StopEvent */, 120, 1, NULL, 'DrudgeHatch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,   5 /* Motion */, 2, 1, 0x1300007D /* BowDeep */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  24 /* StopEvent */, 10, 1, NULL, 'DrudgeHatchStopgapGen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

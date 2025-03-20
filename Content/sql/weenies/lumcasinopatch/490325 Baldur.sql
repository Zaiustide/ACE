DELETE FROM `weenie` WHERE `class_Id` = 490325;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490325, 'Baldur', 10, '2005-02-09 10:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490325,   1,         16) /* ItemType - Creature */
     , (490325,   2,         30) /* CreatureType - Skeleton */
     , (490325,   3,         2) /* PaletteTemplate - Blue */
     , (490325,   6,         -1) /* ItemsCapacity */
     , (490325,   7,         -1) /* ContainersCapacity */
     , (490325,   8,        120) /* Mass */
     , (490325,  16,         32) /* ItemUseable - Remote */
     , (490325,  25,        275) /* Level */
     , (490325,  27,          0) /* ArmorType - None */
     , (490325,  30,          1) /* AllegianceRank */
     , (490325, 113,          1) /* Gender - Male */
     , (490325,  67,          1) /* Tolerance - Never Attack */
     , (490325,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (490325,  95,          5) /* RadarBlipColor - RED */
     , (490325, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (490325, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (490325, 146,          0) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490325,   1, True ) /* Stuck */
     , (490325,   8, True ) /* AllowGive */
     , (490325,  11, False) /* IgnoreCollisions */
     , (490325,  12, True ) /* ReportCollisions */
     , (490325,  13, False) /* Ethereal */
     , (490325,  19, False) /* Attackable */
     , (490325,  42, True ) /* AllowEdgeSlide */
     , (490325,  41, True ) /* ReportCollisionsAsEnvironment */
     , (490325,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490325,   1,       5) /* HeartbeatInterval */
     , (490325,   2,       0) /* HeartbeatTimestamp */
     , (490325,   3,    0.16) /* HealthRate */
     , (490325,   4,       5) /* StaminaRate */
     , (490325,   5,       1) /* ManaRate */
     , (490325,  11,     300) /* ResetInterval */
     , (490325,  12,       0) /* Shade */
     , (490325,  37,       1) /* BuyPrice */
     , (490325,  38,       1) /* SellPrice */
     , (490325,  39,     2) /* DefaultScale */
     , (490325,  54,       5) /* UseRadius */
     , (490325,  76,     0.2) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490325,   1, 'Baldur') /* Name */
     , (490325,   5, 'God of Tears') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490325,   1, 0x02001C0C) /* Setup */
     , (490325,   2, 0x09000001) /* MotionTable */
     , (490325,   3, 0x20000001) /* SoundTable */
     , (490325,   6, 0x0400007E) /* PaletteBase */
     , (490325,   7, 0x10000869) /* ClothingBase */
     , (490325,   8, 0x06001036) /* Icon */;
	 
INSERT INTO `weenie_properties_i_i_d` (`object_Id`, `type`, `value`)
VALUES (490325,  16, 0x01C901EF) /* ActivationTarget */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490325,   1,  200, 0, 0) /* Strength */
     , (490325,   2,  290, 0, 0) /* Endurance */
     , (490325,   3,  200, 0, 0) /* Quickness */
     , (490325,   4,  200, 0, 0) /* Coordination */
     , (490325,   5,  290, 0, 0) /* Focus */
     , (490325,   6,  290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490325,   1,     264, 0, 0, 409) /* MaxHealth */
     , (490325,   3,     210, 0, 0, 500) /* MaxStamina */
     , (490325,   5,     259, 0, 0, 584) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490325,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (490325,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (490325,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (490325,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (490325,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (490325,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (490325,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (490325,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (490325,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

 INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490325,  7 /* Use */,   1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES  (@parent_id,  0,   5 /* Motion */, 0, 1, 0x1300007D /* BowDeep */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  10 /* Tell */, 1, 1, NULL, 'I have been searching for the essence that has made some of the creatures on the newly discovered Island so strong. I am hoping with research I can harness this power.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
    , (@parent_id,  2,  10 /* Tell */, 1, 1, NULL, 'If you find the essence of their power I will reward you with PK Trophies.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
  
     INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490325,  6 /* Give */,      1, 490326 /*Essence of Power */, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  1,  10 /* Tell */, 0, 1, NULL, 'Thank you, this is exactly what I am looking for. I will need more if you have them. Here, let me reward you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,   3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0 /* Undef */, 1000002 /* PK Trophy */, 5, 0 /* Undef */, 0, False, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (490325, 2, 43848,  0, 0, 0, False) /* Create Heart of Darkest Flame (43848) for Wield */;
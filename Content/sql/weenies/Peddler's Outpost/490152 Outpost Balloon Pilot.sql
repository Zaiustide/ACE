DELETE FROM `weenie` WHERE `class_Id` = 490152;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490152, 'ace490152-pilot', 10, '2022-11-15 04:30:58') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490152,   1,         16) /* ItemType - Creature */
     , (490152,   2,         31) /* CreatureType - Empyrean */
     , (490152,   6,         -1) /* ItemsCapacity */
     , (490152,   7,         -1) /* ContainersCapacity */
     , (490152,   8,        120) /* Mass */
     , (490152,  16,         32) /* ItemUseable - Remote */
     , (490152,  25,        275) /* Level */
     , (490152,  27,          0) /* ArmorType - None */
     , (490152,  74,     270496) /* MerchandiseItemTypes - Food, Misc, Writable, PromissoryNote */
     , (490152,  75,          0) /* MerchandiseMinValue */
     , (490152,  76,    1000000) /* MerchandiseMaxValue */
     , (490152,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (490152, 113,          1) /* Gender - Male */
     , (490152, 126,        500) /* VendorHappyMean */
     , (490152, 127,        500) /* VendorHappyVariance */
     , (490152, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (490152, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (490152, 146,         97) /* XpOverride */
     , (490152, 188,          3) /* HeritageGroup - Sho */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490152,   1, True ) /* Stuck */
     , (490152,   8, True ) /* AllowGive */
     , (490152,  11, False) /* IgnoreCollisions */
     , (490152,  12, True ) /* ReportCollisions */
     , (490152,  13, False) /* Ethereal */
     , (490152,  19, False) /* Attackable */
     , (490152,  42, True ) /* AllowEdgeSlide */
     , (490152,  41, True ) /* ReportCollisionsAsEnvironment */
     , (490152,  52, True ) /* AiImmobile */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490152,   1,       5) /* HeartbeatInterval */
     , (490152,   2,       0) /* HeartbeatTimestamp */
     , (490152,   3,    0.16) /* HealthRate */
     , (490152,   4,       5) /* StaminaRate */
     , (490152,   5,       1) /* ManaRate */
     , (490152,  11,     300) /* ResetInterval */
     , (490152,  13,     0.9) /* ArmorModVsSlash */
     , (490152,  14,       1) /* ArmorModVsPierce */
     , (490152,  15,     1.1) /* ArmorModVsBludgeon */
     , (490152,  16,     0.4) /* ArmorModVsCold */
     , (490152,  17,     0.4) /* ArmorModVsFire */
     , (490152,  18,       1) /* ArmorModVsAcid */
     , (490152,  19,     0.6) /* ArmorModVsElectric */
     , (490152,  37,       1) /* BuyPrice */
     , (490152,  38,       1) /* SellPrice */
     , (490152,  39,     1.3) /* DefaultScale */
     , (490152,  54,       5) /* UseRadius */
     , (490152,  64,       1) /* ResistSlash */
     , (490152,  65,       1) /* ResistPierce */
     , (490152,  66,       1) /* ResistBludgeon */
     , (490152,  67,       1) /* ResistFire */
     , (490152,  68,       1) /* ResistCold */
     , (490152,  69,       1) /* ResistAcid */
     , (490152,  70,       1) /* ResistElectric */
     , (490152,  71,       1) /* ResistHealthBoost */
     , (490152,  72,       1) /* ResistStaminaDrain */
     , (490152,  73,       1) /* ResistStaminaBoost */
     , (490152,  74,       1) /* ResistManaDrain */
     , (490152,  75,       1) /* ResistManaBoost */
     , (490152, 104,      10) /* ObviousRadarRange */
     , (490152, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490152,   1, 'Outpost Balloon Pilot') /* Name */
     , (490152,   3, 'Male') /* Sex */
     , (490152,   4, 'Sho') /* HeritageGroup */
     , (490152,   5, 'PK Trophy Vendor') /* Template */
     , (490152,  24, 'Island Outpost') /* TownName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490152,   1, 0x02000001) /* Setup */
     , (490152,   2, 0x0900010E) /* MotionTable */
     , (490152,   3, 0x20000001) /* SoundTable */
     , (490152,   8, 0x06002632) /* Icon */
     , (490152,   9, 0x0500111F) /* EyesTexture */
     , (490152,  10, 0x05001160) /* NoseTexture */
     , (490152,  11, 0x050011D1) /* MouthTexture */
     , (490152,  12, 0x0500024C) /* DefaultEyesTexture */
     , (490152,  13, 0x050002F5) /* DefaultNoseTexture */
     , (490152,  14, 0x0500025C) /* DefaultMouthTexture */
     , (490152,  15, 0x04001FC7) /* HairPalette */
     , (490152,  16, 0x040002BD) /* EyesPalette */
     , (490152,  17, 0x0400049F) /* SkinPalette */
     , (490152,  18, 0x010047FB) /* HeadObject */
     , (490152,  22, 0x34000004) /* PhysicsEffectTable */
     , (490152,  57,    1000002) /* AlternateCurrency - PK Trophy */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490152,   1, 290, 0, 0) /* Strength */
     , (490152,   2, 290, 0, 0) /* Endurance */
     , (490152,   3, 200, 0, 0) /* Quickness */
     , (490152,   4, 200, 0, 0) /* Coordination */
     , (490152,   5, 290, 0, 0) /* Focus */
     , (490152,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490152,   1,   310, 0, 0, 455) /* MaxHealth */
     , (490152,   3,   250, 0, 0, 540) /* MaxStamina */
     , (490152,   5,   240, 0, 0, 440) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490152,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (490152,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (490152,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (490152,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (490152,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (490152,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (490152,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (490152,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (490152,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;


INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (490152, 4, 490153,  0, 0, 0, False) /* Create Gelidite Robe (450531) for Shop */
, (490152, 2, 30645,  0, 0, 0, False) /* Create Gelidite Robe (450531) for Shop */
, (490152, 2, 450712,  0, 0, 0, False) /* Create Gelidite Robe (450531) for Shop */
, (490152, 2, 450787,  0, 0, 0, False) /* Create Gelidite Robe (450531) for Shop */
, (490152, 2, 450729,  0, 0, 0, False) /* Create Gelidite Robe (450531) for Shop */
, (490152, 2, 2596,  0, 0, 0, False) /* Create Gelidite Robe (450531) for Shop */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490152,  7 /* Use */,   1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES  (@parent_id,  0,   5 /* Motion */, 0, 1, 0x1300007D /* BowDeep */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  10 /* Tell */, 1, 1, NULL, 'Thanks to the efforts of many brave adventurers, we have been able to keep a fleet of air balloons flying to the island. The many riches found there have brought great wealth.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
    , (@parent_id,  2,  10 /* Tell */, 1, 1, NULL, ' Hop on the next flight.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
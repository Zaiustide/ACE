DELETE FROM `weenie` WHERE `class_Id` = 490212;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490212, 'ace490212- General Store', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490212,   1,         16) /* ItemType - Creature */
     , (490212,   2,         31) /* CreatureType - Human */
     , (490212,   6,         -1) /* ItemsCapacity */
     , (490212,   7,         -1) /* ContainersCapacity */
     , (490212,  16,         32) /* ItemUseable - Remote */
     , (490212,  25,        250) /* Level */
     , (490212,  27,          0) /* ArmorType - None */
     , (490212,  74,          0) /* MerchandiseItemTypes - None */
     , (490212,  75,          0) /* MerchandiseMinValue */
     , (490212,  76,     100000) /* MerchandiseMaxValue */
     , (490212,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (490212, 113,          1) /* Gender - Male */
     , (490212, 126,        125) /* VendorHappyMean */
     , (490212, 127,        125) /* VendorHappyVariance */
     , (490212, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (490212, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (490212, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490212,   1, True ) /* Stuck */
     , (490212,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490212,   1,       5) /* HeartbeatInterval */
     , (490212,   2,       0) /* HeartbeatTimestamp */
     , (490212,   3,    0.16) /* HealthRate */
     , (490212,   4,       5) /* StaminaRate */
     , (490212,   5,       1) /* ManaRate */
     , (490212,  11,     300) /* ResetInterval */
     , (490212,  13,     0.9) /* ArmorModVsSlash */
     , (490212,  14,       1) /* ArmorModVsPierce */
     , (490212,  15,     1.1) /* ArmorModVsBludgeon */
     , (490212,  16,     0.4) /* ArmorModVsCold */
     , (490212,  17,     0.4) /* ArmorModVsFire */
     , (490212,  18,       1) /* ArmorModVsAcid */
     , (490212,  19,     0.6) /* ArmorModVsElectric */
     , (490212,  37,       1) /* BuyPrice */
     , (490212,  38,       1) /* SellPrice */
     , (490212,  54,       3) /* UseRadius */
     , (490212,  64,       1) /* ResistSlash */
     , (490212,  65,       1) /* ResistPierce */
     , (490212,  66,       1) /* ResistBludgeon */
     , (490212,  67,       1) /* ResistFire */
     , (490212,  68,       1) /* ResistCold */
     , (490212,  69,       1) /* ResistAcid */
     , (490212,  70,       1) /* ResistElectric */
     , (490212,  71,       1) /* ResistHealthBoost */
     , (490212,  72,       1) /* ResistStaminaDrain */
     , (490212,  73,       1) /* ResistStaminaBoost */
     , (490212,  74,       1) /* ResistManaDrain */
     , (490212,  75,       1) /* ResistManaBoost */
     , (490212, 104,      10) /* ObviousRadarRange */
     , (490212, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490212,   1, 'General Store') /* Name */
     , (490212,   5, 'Stipend Vendor') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490212,   1, 0x02000001) /* Setup */
     , (490212,   2, 0x09000001) /* MotionTable */
     , (490212,   3, 0x20000001) /* SoundTable */
     , (490212,   6, 0x0400007E) /* PaletteBase */
     , (490212,   8, 0x06001036) /* Icon */
     , (490212,   9, 0x05001133) /* EyesTexture */
     , (490212,  10, 0x0500116A) /* NoseTexture */
     , (490212,  11, 0x050011B9) /* MouthTexture */
     , (490212,  15, 0x04002018) /* HairPalette */
     , (490212,  16, 0x040004AE) /* EyesPalette */
     , (490212,  17, 0x040002AE) /* SkinPalette */
     , (490212,  18, 0x01004802) /* HeadObject */
     , (490212,  57,      1000004) /* AlternateCurrency - Stipend */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490212,   1, 220, 0, 0) /* Strength */
     , (490212,   2, 270, 0, 0) /* Endurance */
     , (490212,   3, 200, 0, 0) /* Quickness */
     , (490212,   4, 200, 0, 0) /* Coordination */
     , (490212,   5, 290, 0, 0) /* Focus */
     , (490212,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490212,   1,   196, 0, 0, 331) /* MaxHealth */
     , (490212,   3,   196, 0, 0, 466) /* MaxStamina */
     , (490212,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490212,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (490212,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (490212,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (490212,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (490212,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (490212,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (490212,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (490212,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (490212,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490212,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome, do you have any Outpost Trade Tokens you''d like to spend today? We got some fresh crates shipped in on the Balloons this week.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490212,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Thank you again for bartering with me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490212,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I hope you find that useful! Thanks for the business.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490212,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Always glad to help out a citizen of Dereth. I hope it serves you well.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (490212, 2, 450032,  0, 4, 0, False) /* Create Leather Cuirass (25641) for Wield */
     , (490212, 2,   130,  0, 88, 0.4, False) /* Create Shirt (130) for Wield */
	 , (490212, 4, 490204, -1, 0, 0, False) /* Create Life Spells Certificate (46419) for Shop */
     , (490212, 4, 490209, -1, 0, 0, False) /* Create Boxed Augmentation Gems (46441) for Shop */
     , (490212, 4, 490208, -1, 0, 0, False) /* Create Attribute Reset Certificate (46421) for Shop */
     , (490212, 4, 490207, -1, 0, 0, False) /* Create Skill Reset Certificate (46420) for Shop */
     , (490212, 4, 490206, -1, 0, 0, False) /* Create Mastery Reset Certificate (46422) for Shop */
     , (490212, 4, 490205, -1, 0, 0, False) /* Create Item Spells Certificate (46418) for Shop */
     , (490212, 4, 490220, -1, 0, 0, False) /* Create Skill Reset Certificate (46420) for Shop */
     , (490212, 4, 490219, -1, 0, 0, False) /* Create Mastery Reset Certificate (46422) for Shop */
     , (490212, 4, 490218, -1, 0, 0, False) /* Create Item Spells Certificate (46418) for Shop */
	 , (490212, 4, 490217, -1, 0, 0, False) /* Create Skill Reset Certificate (46420) for Shop */
	, (490212, 4, 490313, -1, 0, 0, False) /* Create Mastery Reset Certificate (46422) for Shop */
     , (490212, 4, 490221, -1, 0, 0, False) /* Create Mastery Reset Certificate (46422) for Shop */
	 , (490212, 4, 490275, -1, 0, 0, False) /* Create Mastery Reset Certificate (46422) for Shop */
	 , (490212, 4, 490276, -1, 0, 0, False) /* Create Mastery Reset Certificate (46422) for Shop */
	 , (490212, 4, 490277, -1, 0, 0, False) /* Create Mastery Reset Certificate (46422) for Shop */
	 , (490212, 4, 490278, -1, 0, 0, False) /* Create Mastery Reset Certificate (46422) for Shop */
	  , (490212, 4, 490315, -1, 0, 0, False) /* Create Mastery Reset Certificate (46422) for Shop */
	   , (490212, 4, 490316, -1, 0, 0, False) /* Create Mastery Reset Certificate (46422) for Shop */
	   , (490212, 4, 490317, -1, 0, 0, False) /* Create Mastery Reset Certificate (46422) for Shop */;
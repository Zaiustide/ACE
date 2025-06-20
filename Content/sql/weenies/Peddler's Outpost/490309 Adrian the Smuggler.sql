DELETE FROM `weenie` WHERE `class_Id` = 490309;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490309, 'ace490309-Adrian the Smuggler', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490309,   1,         16) /* ItemType - Creature */
     , (490309,   2,         31) /* CreatureType - Human */
     , (490309,   6,         -1) /* ItemsCapacity */
     , (490309,   7,         -1) /* ContainersCapacity */
     , (490309,  16,         32) /* ItemUseable - Remote */
     , (490309,  25,        250) /* Level */
     , (490309,  27,          0) /* ArmorType - None */
     , (490309,  74,          0) /* MerchandiseItemTypes - None */
     , (490309,  75,          0) /* MerchandiseMinValue */
     , (490309,  76,     100000) /* MerchandiseMaxValue */
     , (490309,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (490309, 113,          1) /* Gender - Male */
     , (490309, 126,        125) /* VendorHappyMean */
     , (490309, 127,        125) /* VendorHappyVariance */
     , (490309, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (490309, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (490309, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490309,   1, True ) /* Stuck */
     , (490309,  19, False) /* Attackable */
     , (490309,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490309,   1,       5) /* HeartbeatInterval */
     , (490309,   2,       0) /* HeartbeatTimestamp */
     , (490309,   3,    0.16) /* HealthRate */
     , (490309,   4,       5) /* StaminaRate */
     , (490309,   5,       1) /* ManaRate */
     , (490309,  11,     300) /* ResetInterval */
     , (490309,  13,     0.9) /* ArmorModVsSlash */
     , (490309,  14,       1) /* ArmorModVsPierce */
     , (490309,  15,     1.1) /* ArmorModVsBludgeon */
     , (490309,  16,     0.4) /* ArmorModVsCold */
     , (490309,  17,     0.4) /* ArmorModVsFire */
     , (490309,  18,       1) /* ArmorModVsAcid */
     , (490309,  19,     0.6) /* ArmorModVsElectric */
     , (490309,  37,       1) /* BuyPrice */
     , (490309,  38,       1) /* SellPrice */
     , (490309,  54,       3) /* UseRadius */
     , (490309,  64,       1) /* ResistSlash */
     , (490309,  65,       1) /* ResistPierce */
     , (490309,  66,       1) /* ResistBludgeon */
     , (490309,  67,       1) /* ResistFire */
     , (490309,  68,       1) /* ResistCold */
     , (490309,  69,       1) /* ResistAcid */
     , (490309,  70,       1) /* ResistElectric */
     , (490309,  71,       1) /* ResistHealthBoost */
     , (490309,  72,       1) /* ResistStaminaDrain */
     , (490309,  73,       1) /* ResistStaminaBoost */
     , (490309,  74,       1) /* ResistManaDrain */
     , (490309,  75,       1) /* ResistManaBoost */
     , (490309, 104,      10) /* ObviousRadarRange */
     , (490309, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490309,   1, 'Adrian the Smuggler') /* Name */
     , (490309,   5, 'Peddler of Paragon') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490309,   1, 0x02000001) /* Setup */
     , (490309,   2, 0x09000001) /* MotionTable */
     , (490309,   3, 0x20000001) /* SoundTable */
     , (490309,   6, 0x0400007E) /* PaletteBase */
     , (490309,   8, 0x06001036) /* Icon */
     , (490309,   9, 0x05001133) /* EyesTexture */
     , (490309,  10, 0x0500116A) /* NoseTexture */
     , (490309,  11, 0x050011B9) /* MouthTexture */
     , (490309,  15, 0x04002018) /* HairPalette */
     , (490309,  16, 0x040004AE) /* EyesPalette */
     , (490309,  17, 0x040002AE) /* SkinPalette */
     , (490309,  18, 0x01004802) /* HeadObject */
     , (490309,  57,    1000003) /* AlternateCurrency - Phial of Bloody Tears */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490309,   1, 220, 0, 0) /* Strength */
     , (490309,   2, 270, 0, 0) /* Endurance */
     , (490309,   3, 200, 0, 0) /* Quickness */
     , (490309,   4, 200, 0, 0) /* Coordination */
     , (490309,   5, 290, 0, 0) /* Focus */
     , (490309,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490309,   1,   196, 0, 0, 331) /* MaxHealth */
     , (490309,   3,   196, 0, 0, 466) /* MaxStamina */
     , (490309,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490309,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (490309,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (490309,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (490309,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (490309,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (490309,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (490309,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (490309,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (490309,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490309,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome, do you have any Phials of Bloody Tears you''d like to spend today?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490309,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Thank you again for bartering with me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490309,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I find this to be a far easier way to get Phials of Bloody Tears than to actually work for them, thanks for the business.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490309,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Always glad to help out a citizen of Dereth. I hope it serves you well.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (490309, 2, 25641,  0, 4, 0, False) /* Create Leather Cuirass (25641) for Wield */
     , (490309, 2, 25645,  0, 4, 0, False) /* Create Leather Leggings (25645) for Wield */
     , (490309, 2, 25651,  0, 4, 0, False) /* Create Leather Sleeves (25651) for Wield */
     , (490309, 2, 25661,  0, 4, 0, False) /* Create Leather Boots (25661) for Wield */
     , (490309, 2,   130,  0, 88, 0.4, False) /* Create Shirt (130) for Wield */
     , (490309, 4, 490311, -1, 0, 0, False) /* Create Darkbeat Key */
	 , (490309, 4, 41541200, -1, 0, 0, False) /* Colo Gem for Lvl 2 Paragon */
	 , (490309, 4, 37058, -1, 0, 0, False) /* Aerbax Mask Shard for Lvl 3 Paragon*/
	 , (490309, 4, 39467, -1, 0, 0, False) /* Tchk'Tain the Tender's Severed Head for Lvl 6 Paragon*/
	 , (490309, 4, 41541201, -1, 0, 0, False) /* Slave Master NeftetFreeHatsheputWait gem for Lvl 8 Paragon*/
	 , (490309, 4, 53472, -1, 0, 0, False) /* Lord Cynreft Mhoire's Signet Ring for Lvl 11 Paragon*/
	 , (490309, 4, 41982, -1, 0, 0, False) /* Rytheran's Jeweled Ring for Lvl 13 Paragon*/
	 , (490309, 4, 53473, -1, 0, 0, False) /* Lady Tairla Mhoire's Signet Ring for Lvl 16 Paragon*/
	 , (490309, 4, 35910, -1, 0, 0, False) /* Carapace Shard for Lvl 18 Paragon*/
	 , (490309, 4, 34457, -1, 0, 0, False) /* Thunder Chicken Token for Lvl 21 Paragon*/
	 , (490309, 4, 41541, -1, 0, 0, False) /* Shattered Aetherium Core Sample for Lvl 23 Paragon*/
	 , (490309, 4, 53474, -1, 0, 0, False) /* Spectral Amber Shard for Lvl 28 Paragon*/
	 , (490309, 4, 35871, -1, 0, 0, False) /* The Master Token for Lvl 31 Paragon*/
	 , (490309, 4, 52008, -1, 0, 0, False) /* Shard of the Curator of Torment's Mask for Lvl 32 Paragon*/
	 , (490309, 4, 53476, -1, 0, 0, False) /* Daimyo Idah's Tattered Mask for Lvl 36 Paragon*/
	 , (490309, 4, 41541202, -1, 0, 0, False) /* Legendary Quest gem for Lvl 37 and 47 Paragon*/
	 , (490309, 4, 34452, -1, 0, 0, False) /* Gladiator Diemos Token for Lvl 38 Paragon*/
	 , (490309, 4, 53475, -1, 0, 0, False) /* Daimyo Nobanuga's Shattered Helm for Lvl 41 Paragon*/
	 , (490309, 4, 52817, -1, 0, 0, False) /* Helm of Tremb'Orh for Lvl 42 Paragon*/
	 , (490309, 4, 48876, -1, 0, 0, False) /* Mirror Shard for Lvl 43 Paragon*/
	 , (490309, 4, 53360, -1, 0, 0, False) /* Essence of Zerzelikyr for Lvl 46 Paragon*/
	 , (490309, 4, 52815, -1, 0, 0, False) /* Holcha's Head for Lvl 48 Paragon */
	 
	 ;

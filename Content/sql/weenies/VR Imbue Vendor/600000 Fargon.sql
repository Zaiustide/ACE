DELETE FROM `weenie` WHERE `class_Id` = 600000;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600000, 'ace600000-Fangorn', 12, '2022-11-15 04:30:58') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600000,   1,         16) /* ItemType - Creature */
     , (600000,   2,         62) /* CreatureType - Empyrean */
     , (600000,   6,         -1) /* ItemsCapacity */
     , (600000,   7,         -1) /* ContainersCapacity */
     , (600000,   8,        120) /* Mass */
     , (600000,  16,         32) /* ItemUseable - Remote */
     , (600000,  25,        275) /* Level */
     , (600000,  27,          0) /* ArmorType - None */
     , (600000,  74,     270496) /* MerchandiseItemTypes - Food, Misc, Writable, PromissoryNote */
     , (600000,  75,          1) /* MerchandiseMinValue */
     , (600000,  76,    100) /* MerchandiseMaxValue */
     , (600000,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (600000, 113,          1) /* Gender - Male */
     , (600000, 126,        500) /* VendorHappyMean */
     , (600000, 127,        500) /* VendorHappyVariance */
     , (600000, 133,          4) /* ShowableOnRadar - ShowAlways */
	 , (600000,  95,          5) /* RadarBlipColor - RED */
     , (600000, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (600000, 146,         97) /* XpOverride */
     , (600000, 188,          3) /* HeritageGroup - Sho */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600000,   1, True ) /* Stuck */
     , (600000,  12, True ) /* ReportCollisions */
     , (600000,  13, False) /* Ethereal */
     , (600000,  19, False) /* Attackable */
     , (600000,  39, True ) /* DealMagicalItems */
     , (600000,  41, True ) /* ReportCollisionsAsEnvironment */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600000,   1,       5) /* HeartbeatInterval */
     , (600000,   2,       0) /* HeartbeatTimestamp */
     , (600000,   3,    0.16) /* HealthRate */
     , (600000,   4,       5) /* StaminaRate */
     , (600000,   5,       1) /* ManaRate */
     , (600000,  11,     300) /* ResetInterval */
     , (600000,  13,     0.9) /* ArmorModVsSlash */
     , (600000,  14,       1) /* ArmorModVsPierce */
     , (600000,  15,     1.1) /* ArmorModVsBludgeon */
     , (600000,  16,     0.4) /* ArmorModVsCold */
     , (600000,  17,     0.4) /* ArmorModVsFire */
     , (600000,  18,       1) /* ArmorModVsAcid */
     , (600000,  19,     0.6) /* ArmorModVsElectric */
     , (600000,  37,       1) /* BuyPrice */
     , (600000,  38,       1) /* SellPrice */
     , (600000,  39,     1.5) /* DefaultScale */
     , (600000,  54,       5) /* UseRadius */
     , (600000,  64,       1) /* ResistSlash */
     , (600000,  65,       1) /* ResistPierce */
     , (600000,  66,       1) /* ResistBludgeon */
     , (600000,  67,       1) /* ResistFire */
     , (600000,  68,       1) /* ResistCold */
     , (600000,  69,       1) /* ResistAcid */
     , (600000,  70,       1) /* ResistElectric */
     , (600000,  71,       1) /* ResistHealthBoost */
     , (600000,  72,       1) /* ResistStaminaDrain */
     , (600000,  73,       1) /* ResistStaminaBoost */
     , (600000,  74,       1) /* ResistManaDrain */
     , (600000,  75,       1) /* ResistManaBoost */
     , (600000, 104,      10) /* ObviousRadarRange */
     , (600000, 125,       1) /* ResistHealthDrain */
	 , (600000,  76,     0.25) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600000,   1, 'Fargon') /* Name */
     , (600000,   3, 'Male') /* Sex */
     , (600000,   4, 'Sho') /* HeritageGroup */
     , (600000,   5, 'Gemsmith ') /* Template */
     , (600000,  24, 'Afterlife') /* TownName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600000,   1, 0x02001C27) /* Setup */
     , (600000,   2, 0x09000081) /* MotionTable */
     , (600000,   3, 0x20000015) /* SoundTable */
     , (600000,   8, 0x06001224) /* Icon */
     , (600000,  22, 0x3400005E) /* PhysicsEffectTable */
     , (600000,  57,    1000005) /* AlternateCurrency - Ancient Amber Crystal */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (600000,   1, 290, 0, 0) /* Strength */
     , (600000,   2, 290, 0, 0) /* Endurance */
     , (600000,   3, 200, 0, 0) /* Quickness */
     , (600000,   4, 200, 0, 0) /* Coordination */
     , (600000,   5, 290, 0, 0) /* Focus */
     , (600000,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (600000,   1,   310, 0, 0, 455) /* MaxHealth */
     , (600000,   3,   250, 0, 0, 540) /* MaxStamina */
     , (600000,   5,   240, 0, 0, 440) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (600000,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (600000,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (600000,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (600000,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (600000,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (600000,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (600000,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (600000,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (600000,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;


INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (600000,  2 /* Vendor */,    0.6, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You have spilled a lot of blood in the arena, hopefully you can put this to good use.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (600000,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Comeback when you have more Ancient Amber Crystals and I would be happy to help you further.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (600000,  2 /* Vendor */,    0.6, NULL, NULL, NULL, NULL, 3 /* Sell */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I will put this crystal to good use', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (600000,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You must have spent a long time in the arena to find such a fine crystal. I certainly can use this to make more imbues. Please browse my shop.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (600000,  2 /* Vendor */,    0.4, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I hope you brought me some more of those tears, maggot.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (600000,  2 /* Vendor */,  0.125, NULL, NULL, NULL, NULL, 5 /* Heartbeat */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x1000004d /* Wave */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (600000,  2 /* Vendor */,   0.25, NULL, NULL, NULL, NULL, 5 /* Heartbeat */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x13000097 /* BowDeep */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (600000,  2 /* Vendor */,  0.375, NULL, NULL, NULL, NULL, 5 /* Heartbeat */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x10000060 /* Shrug */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (600000,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 5 /* Heartbeat */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x1000006c /* Nod */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (600000, 4, 53016,  0, 0, 0, False) /* Create Corrupted Amber_ Bracers of the Corrupted Heart (53016) for Shop  */
     , (600000, 4, 53017,  0, 0, 0, False) /* Create Corrupted Ambers: Gauntlets of the Corrupted Heart (53017) for Shop  */
	 , (600000, 4, 53018,  0, 0, 0, False) /* Create Corrupted Ambers: Helm of the Corrupted Heart (53018) for Shop */ 
	 , (600000, 4, 53019,  0, 0, 0, False) /* Create Corrupted Ambers: Pauldrons of the Corrupted Heart (53019) for Shop */
     , (600000, 4, 53020,  0, 0, 0, False) /* Create Corrupted Ambers: Sollerets of the Corrupted Heart (53020) for Shop */
	 , (600000, 4, 53021,  0, 0, 0, False) /* Create Corrupted Ambers: Breastplate of the Corrupted Soul (53021) for Shop */
	, (600000, 4, 53022,  0, 0, 0, False) /* Create Corrupted Ambers: Girth of the Corrupted Soul (53022) for Shop */
	, (600000, 4, 53023,  0, 0, 0, False) /* Create Corrupted Ambers: Greaves of the Corrupted Soul (53023) for Shop */
	, (600000, 4, 53024,  0, 0, 0, False) /* Create Corrupted Ambers: Tassets of the Corrupted Soul (53024) for Shop */
	, (600000, 4, 53066,  0, 0, 0, False) /* Create Empowered Amber: Bracers of Life  (53066) for Shop */
	, (600000, 4, 53067,  0, 0, 0, False) /* Create Empowered Ambers: Breastplate of Life (53067) for Shop */
	, (600000, 4, 53068,  0, 0, 0, False) /* Create Empowered Ambers: Gauntlets of Life (53068) for Shop */
	, (600000, 4, 53069,  0, 0, 0, False) /* Create Empowered Ambers: Girth of Life (53069) for Shop */
    , (600000, 4, 53070,  0, 0, 0, False) /* Create Empowered Ambers: Greaves of Life (53070) for Shop */
	, (600000, 4, 53071,  0, 0, 0, False) /* Create Empowered Ambers: Helm of Life (53071) for Shop */
	, (600000, 4, 53072,  0, 0, 0, False) /* Create Empowered Ambers: Pauldrons of Life (53072) for Shop */
	, (600000, 4, 53073,  0, 0, 0, False) /* Create Empowered Ambers: Sollerets of Life (53073) for Shop */
	, (600000, 4, 53074,  0, 0, 0, False) /* Create Empowered Ambers: Tassets of Life (53074) for Shop */
	, (600000, 4, 53294,  0, 0, 0, False) /* Create Luminous Amber: Pauldrons of Thunderous Blows (53294) for Shop */
	, (600000, 4, 53293,  0, 0, 0, False) /* Create Luminous Amber:  Luminous Amber: Bracers of Thunderous Blows (53295) for Shop */
	 , (600000, 4, 53297,  0, 0, 0, False) /* Create Luminous Amber: Luminous Amber: Breastplate of the Bulwark (53296) for Shop */
	 , (600000, 4, 53295,  0, 0, 0, False) /* Create Luminous Amber: Greaves of the Tower (53295) for Shop */
	 , (600000, 4, 53296,  0, 0, 0, False) /* Create Luminous Amber: Tassets of the Tower (53296) for Shop */
	 , (600000, 4, 53298,  0, 0, 0, False) /* Create Luminous Amber: Girth of the Bulwark (53298) for Shop */
	 , (600000, 4, 53299,  0, 0, 0, False) /* Create Luminous Amber: Gauntlets of the Storm (53299) for Shop */
	 , (600000, 4, 53300,  0, 0, 0, False) /* Create Luminous Amber: Sollerets of the Storm (53300) for Shop */
	 , (600000, 4, 53301,  0, 0, 0, False) /* Create Luminous Amber: Helm of Healing (53301) for Shop */
	 , (600000, 4, 53440,  0, 0, 0, False) /* Create Empowered Amber: Shield of Reinforcement (53440) for Shop */
	 , (600000, 4, 53441,  0, 0, 0, False) /* Create Luminous Amber: Shield of Fortication (53441) for Shop */
	 , (600000, 4, 53452,  0, 0, 0, False) /* Create Corrupted Amber: Weapon of the Corrupted Heart (53452) for Shop */
	 , (600000, 4, 53453,  0, 0, 0, False) /* Create Corrupted Amber: (53453) for Shop */
	 , (600000, 4, 53305,  0, 0, 0, False) /* Create Gem of Verdant Force (53453) for Shop */;
	 
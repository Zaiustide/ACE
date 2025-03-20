DELETE FROM `weenie` WHERE `class_Id` = 490514;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490514, 'ace490514-drudgeaviator', 10, '2022-11-15 04:30:58') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490514,   1,         16) /* ItemType - Creature */
     , (490514,   2,         3) /* CreatureType - Drudge */
	 , (490514,   3,         80) /* PaletteTemplate - Iron */
     , (490514,   6,         -1) /* ItemsCapacity */
     , (490514,   7,         -1) /* ContainersCapacity */
     , (490514,   8,        120) /* Mass */
     , (490514,  16,         32) /* ItemUseable - Remote */
     , (490514,  25,        275) /* Level */
     , (490514,  27,          0) /* ArmorType - None */
     , (490514,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (490514, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (490514, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (490514, 146,         97) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490514,   1, True ) /* Stuck */
     , (490514,   8, True ) /* AllowGive */
     , (490514,  11, False) /* IgnoreCollisions */
     , (490514,  12, True ) /* ReportCollisions */
     , (490514,  13, False) /* Ethereal */
     , (490514,  19, False) /* Attackable */
     , (490514,  42, True ) /* AllowEdgeSlide */
     , (490514,  41, True ) /* ReportCollisionsAsEnvironment */
     , (490514,  52, True ) /* AiImmobile */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490514,   1,       5) /* HeartbeatInterval */
     , (490514,   2,       0) /* HeartbeatTimestamp */
     , (490514,   3,    0.16) /* HealthRate */
     , (490514,   4,       5) /* StaminaRate */
     , (490514,   5,       1) /* ManaRate */
     , (490514,  11,     300) /* ResetInterval */
     , (490514,  13,     0.9) /* ArmorModVsSlash */
     , (490514,  14,       1) /* ArmorModVsPierce */
     , (490514,  15,     1.1) /* ArmorModVsBludgeon */
     , (490514,  16,     0.4) /* ArmorModVsCold */
     , (490514,  17,     0.4) /* ArmorModVsFire */
     , (490514,  18,       1) /* ArmorModVsAcid */
     , (490514,  19,     0.6) /* ArmorModVsElectric */
     , (490514,  37,       1) /* BuyPrice */
     , (490514,  38,       1) /* SellPrice */
     , (490514,  39,     1.3) /* DefaultScale */
     , (490514,  54,       5) /* UseRadius */
     , (490514,  64,       1) /* ResistSlash */
     , (490514,  65,       1) /* ResistPierce */
     , (490514,  66,       1) /* ResistBludgeon */
     , (490514,  67,       1) /* ResistFire */
     , (490514,  68,       1) /* ResistCold */
     , (490514,  69,       1) /* ResistAcid */
     , (490514,  70,       1) /* ResistElectric */
     , (490514,  71,       1) /* ResistHealthBoost */
     , (490514,  72,       1) /* ResistStaminaDrain */
     , (490514,  73,       1) /* ResistStaminaBoost */
     , (490514,  74,       1) /* ResistManaDrain */
     , (490514,  75,       1) /* ResistManaBoost */
     , (490514, 104,      10) /* ObviousRadarRange */
     , (490514, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490514,   1, 'Drudge Aviator') /* Name */
     , (490514,  24, 'Pilot Trainer') /* TownName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490514,   1, 0x020007DD) /* Setup */
     , (490514,   2, 0x09000008) /* MotionTable */
     , (490514,   3, 0x20000007) /* SoundTable */
     , (490514,   4, 0x30000004) /* CombatTable */
     , (490514,   6, 0x04000F6C) /* PaletteBase */
     , (490514,   7, 0x10000207) /* ClothingBase */
     , (490514,   8, 0x06001035) /* Icon */
     , (490514,  22, 0x3400001A) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490514,   1, 290, 0, 0) /* Strength */
     , (490514,   2, 290, 0, 0) /* Endurance */
     , (490514,   3, 200, 0, 0) /* Quickness */
     , (490514,   4, 200, 0, 0) /* Coordination */
     , (490514,   5, 290, 0, 0) /* Focus */
     , (490514,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490514,   1,   310, 0, 0, 455) /* MaxHealth */
     , (490514,   3,   250, 0, 0, 540) /* MaxStamina */
     , (490514,   5,   240, 0, 0, 440) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490514,  0,  4,  0,    0,  340,  279,  150,  282,  245,  282,  245,  306,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (490514,  1,  4,  0,    0,  345,  283,  152,  286,  248,  286,  248,  311,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (490514,  2,  4,  0,    0,  345,  283,  152,  286,  248,  286,  248,  311,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (490514,  3,  4,  0,    0,  345,  283,  152,  286,  248,  286,  248,  311,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (490514,  4,  4,  0,    0,  340,  279,  150,  282,  245,  282,  245,  306,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (490514,  5,  4, 35, 0.75,  340,  279,  150,  282,  245,  282,  245,  306,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (490514,  6,  4,  0,    0,  340,  279,  150,  282,  245,  282,  245,  306,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (490514,  7,  4,  0,    0,  340,  279,  150,  282,  245,  282,  245,  306,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (490514,  8,  4, 35, 0.75,  340,  279,  150,  282,  245,  282,  245,  306,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;


INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490514,  7 /* Use */,   1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES  (@parent_id,  0,  10 /* Tell */, 1, 1, NULL, 'I will pay you well if you can find me some balloon instruction manuals, I am desperate to train up some new recruits.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
    , (@parent_id,  1,  10 /* Tell */, 1, 1, NULL, ' We have lost many of our best pilots out here.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
	
	 
INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490514,  6 /* Give */,      1, 490153, NULL, NULL, NULL, NULL, NULL, NULL);
	
	SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   3 /* Give */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0 /* Undef */, 1000002 /* PK Trophy */, 200, 0 /* Undef */, 0, False, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
	 , (@parent_id,  1,  10 /* Tell */, 1, 1, NULL, 'I will put this to good use. Soon you will see more of our balloons in the air! I appreciate the business.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
	 
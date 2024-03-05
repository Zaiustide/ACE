DELETE FROM `weenie` WHERE `class_Id` = 490171;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490171, 'ace490171-Drudge Stronghold', 10, '2022-08-22 03:09:27') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490171,   1,         16) /* ItemType - Creature */
     , (490171,   6,         -1) /* ItemsCapacity */
     , (490171,   7,         -1) /* ContainersCapacity */
     , (490171,  16,         32) /* ItemUseable - Remote */
     , (490171,  93,    6294556) /* PhysicsState - Ethereal, ReportCollisions, IgnoreCollisions, Gravity, LightingOn, ReportCollisionsAsEnvironment, EdgeSlide */
     , (490171,  95,          4) /* RadarBlipColor - Purple */
	 , (490171, 111,         49) /* PortalBitmask - Unrestricted, NoSummon, NoRecall */
     , (490171, 133,          4) /* ShowableOnRadar - ShowAlways */
	 , (490171, 267,       1800) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490171,   1, True ) /* Stuck */
     , (490171,  19, False) /* Attackable */
     , (490171,  52, True ) /* AiImmobile */
     , (490171,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (490171,  83, True ) /* NpcLooksLikeObject */
     , (490171,  90, True ) /* NpcInteractsSilently */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490171,  54,     0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490171,   1, 'Drudge Stronghold') /* Name */
     , (490171,  16, 'This portal cannot be recalled, linked nor summoned.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490171,   1, 0x02001945) /* Setup */
     , (490171,   2, 0x09000172) /* MotionTable */
     , (490171,   3, 0x2000008C) /* SoundTable */
     , (490171,   8, 0x0600106B) /* Icon */
     , (490171,  22, 0x3400002A) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490171,   1, 200, 0, 0) /* Strength */
     , (490171,   2, 250, 0, 0) /* Endurance */
     , (490171,   3, 200, 0, 0) /* Quickness */
     , (490171,   4, 260, 0, 0) /* Coordination */
     , (490171,   5, 300, 0, 0) /* Focus */
     , (490171,   6, 300, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490171,   1,   150, 0, 0, 275) /* MaxHealth */
     , (490171,   3,   235, 0, 0, 485) /* MaxStamina */
     , (490171,   5,   300, 0, 0, 600) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490171, 31, 0, 3, 0, 999, 0, 1642.85095430452) /* CreatureEnchantment Specialized */
     , (490171, 32, 0, 3, 0, 999, 0, 1642.85095430452) /* ItemEnchantment     Specialized */
     , (490171, 33, 0, 3, 0, 999, 0, 1642.85095430452) /* LifeMagic           Specialized */
     , (490171, 34, 0, 3, 0, 999, 0, 1642.85095430452) /* WarMagic            Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490171,  7 /* Use */,  1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  99 /* TeleportTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x00260329, 139.693954,  -101.428970,   -4.576775,  0.918604, 0, 0, 0.395179);






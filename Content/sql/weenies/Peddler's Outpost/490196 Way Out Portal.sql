DELETE FROM `weenie` WHERE `class_Id` = 490196;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490196, 'ace490196-WayOutportal', 10, '2021-11-17 16:56:08') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490196,   1,         16) /* ItemType - Creature */
     , (490196,   6,         -1) /* ItemsCapacity */
     , (490196,   7,         -1) /* ContainersCapacity */
     , (490196,  16,         32) /* ItemUseable - Remote */
     , (490196,  93,    6294556) /* PhysicsState - Ethereal, ReportCollisions, IgnoreCollisions, Gravity, LightingOn, ReportCollisionsAsEnvironment, EdgeSlide */
     , (490196,  95,          4) /* RadarBlipColor - Purple */
     , (490196, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (490196, 267,         120) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490196,   1, True ) /* Stuck */
     , (490196,  19, False) /* Attackable */
     , (490196,  52, True ) /* AiImmobile */
     , (490196,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (490196,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490196,  54,       3) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490196,   1, 'Way Out') /* Name */
     , (490196,  16, 'A secret way out of the Drudge Stronghold.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490196,   1, 0x02001945) /* Setup */
     , (490196,   2, 0x09000172) /* MotionTable */
     , (490196,   3, 0x2000008C) /* SoundTable */
     , (490196,   8, 0x0600106B) /* Icon */
     , (490196,  22, 0x3400002A) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490196,  7 /* Use */,  1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  99 /* TeleportTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,  0xF663001C, 79.982117,  89.262848,  0.566429,  -0.802703, 0, 0, 0.596379);




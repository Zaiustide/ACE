DELETE FROM `weenie` WHERE `class_Id` = 490177;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490177, 'ace490177-Drudgetrapdoorportal', 10, '2021-11-17 16:56:08') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490177,   1,         16) /* ItemType - Creature */
     , (490177,   6,         -1) /* ItemsCapacity */
     , (490177,   7,         -1) /* ContainersCapacity */
     , (490177,  16,         32) /* ItemUseable - Remote */
     , (490177,  93,    6294556) /* PhysicsState - Ethereal, ReportCollisions, IgnoreCollisions, Gravity, LightingOn, ReportCollisionsAsEnvironment, EdgeSlide */
     , (490177,  95,          4) /* RadarBlipColor - Purple */
     , (490177, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (490177, 267,         120) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490177,   1, True ) /* Stuck */
     , (490177,  19, False) /* Attackable */
     , (490177,  52, True ) /* AiImmobile */
     , (490177,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (490177,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490177,  54,       3) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490177,   1, 'Drudge Stronghold Secret Entrance') /* Name */
     , (490177,  16, 'A secret entrance to the Drudge Stronghold.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490177,   1, 0x02001945) /* Setup */
     , (490177,   2, 0x09000172) /* MotionTable */
     , (490177,   3, 0x2000008C) /* SoundTable */
     , (490177,   8, 0x0600106B) /* Icon */
     , (490177,  22, 0x3400002A) /* PhysicsEffectTable */;


INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490177,  7 /* Use */,  1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  99 /* TeleportTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,  0x00260153, 89.068436,  -29.455112,  -23.995001,  -0.410401, 0, 0,  0.911905);




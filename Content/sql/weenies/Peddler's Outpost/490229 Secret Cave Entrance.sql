DELETE FROM `weenie` WHERE `class_Id` = 490229;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490229, 'ace490229-Secret Cave Entrance', 7, '2021-11-17 16:56:08') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490229,   1,      65536) /* ItemType - Portal */
     , (490229,  16,         32) /* ItemUseable - Remote */
     , (490229,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (490229, 111,         56) /* PortalBitmask - NoSummon, NoRecall, No NPK */
     , (490229, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (490229, 267,         120) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490229,   1, True ) /* Stuck */
     , (490229,  19, False) /* Attackable */
     , (490229,  52, True ) /* AiImmobile */
     , (490229,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (490229,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490229,  54,       -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490229,   1, 'Secret Cave Entrance') /* Name */
     , (490229,  16, 'A secret entrance to the Dragon''s Den.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490229,   1, 0x02001945) /* Setup */
     , (490229,   2, 0x09000172) /* MotionTable */
     , (490229,   3, 0x2000008C) /* SoundTable */
     , (490229,   8, 0x0600106B) /* Icon */
     , (490229,  22, 0x3400002A) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490229, 2,  0x003F024C, 190.103424,  -59.999531,  -29.995001,  -0.014597, 0, 0, 0.999893) /* Destination */
/* @teleloc 0x01C9022D [72.900002 -30.200001 0.000000] 0.139173 0.000000 0.000000 -0.990268 */;

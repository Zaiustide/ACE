DELETE FROM `weenie` WHERE `class_Id` = 490234;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490234, 'ace490234-Dragon''s Den portal', 7, '2021-11-17 16:56:08') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490234,   1,      65536) /* ItemType - Portal */
     , (490234,  16,         32) /* ItemUseable - Remote */
     , (490234,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (490234, 111,         56) /* PortalBitmask - NoSummon, NoRecall, No NPK */
     , (490234, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (490234, 267,         1800) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490234,   1, True ) /* Stuck */
     , (490234,  19, False) /* Attackable */
     , (490234,  52, True ) /* AiImmobile */
     , (490234,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (490234,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490234,  54,       -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490234,   1, 'Dragon''s Den') /* Name */
     , (490234,  16, 'Entrance to Dragon''s Den.') /* LongDesc */
     , (490234,  37, 'PeddlersDungeonEntryDragons');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490234,   1, 0x02001945) /* Setup */
     , (490234,   2, 0x09000172) /* MotionTable */
     , (490234,   3, 0x2000008C) /* SoundTable */
     , (490234,   8, 0x0600106B) /* Icon */
     , (490234,  22, 0x3400002A) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490234, 2,  0x003F014B, 309.778442,  -78.057442,  -47.994999,  -0.006425, 0, 0, 0.999979) /* Destination */
/* @teleloc 0x01C9022D [72.900002 -30.200001 0.000000] 0.139173 0.000000 0.000000 -0.990268 */;


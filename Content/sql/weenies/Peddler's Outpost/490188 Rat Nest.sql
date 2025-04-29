DELETE FROM `weenie` WHERE `class_Id` = 490188;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490188, 'portalRatNest', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490188,   1,      65536) /* ItemType - Portal */
     , (490188,  16,         32) /* ItemUseable - Remote */
     , (490188,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (490188, 111,         56) /* PortalBitmask - NoSummon, NoRecall, No NPK */
     , (490188, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490188,   1, True ) /* Stuck */
     , (490188,  11, False) /* IgnoreCollisions */
     , (490188,  12, True ) /* ReportCollisions */
     , (490188,  13, True ) /* Ethereal */
     , (490188,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490188,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490188,   1, 'Rat Nest') /* Name */
     , (490188,  37, 'PeddlersDungeonEntryRats');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490188,   1, 0x02001945) /* Setup */
     , (490188,   2, 0x09000172) /* MotionTable */
     , (490188,   3, 0x2000008C) /* SoundTable */
     , (490188,   8, 0x0600106B) /* Icon */
     , (490188,  22, 0x3400002A) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490188, 2,  0x7E040511, 412.360626, -80.075020, -17.995001, -0.710211, 0, 0, -0.703989) /* Destination */
/* @teleloc 0x01C9022D [72.900002 -30.200001 0.000000] 0.139173 0.000000 0.000000 -0.990268 */;



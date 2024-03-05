DELETE FROM `weenie` WHERE `class_Id` = 490240;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490240, 'portalMiteHole', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490240,   1,      65536) /* ItemType - Portal */
     , (490240,  16,         32) /* ItemUseable - Remote */
     , (490240,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (490240, 111,         56) /* PortalBitmask - NoSummon, NoRecall, No NPK */
     , (490240, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490240,   1, True ) /* Stuck */
     , (490240,  11, False) /* IgnoreCollisions */
     , (490240,  12, True ) /* ReportCollisions */
     , (490240,  13, True ) /* Ethereal */
     , (490240,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490240,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490240,   1, 'Mite Hole') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490240,   1, 0x02001945) /* Setup */
     , (490240,   2, 0x09000172) /* MotionTable */
     , (490240,   3, 0x2000008C) /* SoundTable */
     , (490240,   8, 0x0600106B) /* Icon */
     , (490240,  22, 0x3400002A) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490240, 2,  0x00E1034A, 52.85520, -248.074997, 0.005000,1.000000, 0, 0, -0) /* Destination */
/* @teleloc 0x01C9022D [72.900002 -30.200001 0.000000] 0.139173 0.000000 0.000000 -0.990268 */;


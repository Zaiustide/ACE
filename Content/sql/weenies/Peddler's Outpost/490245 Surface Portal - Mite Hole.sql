DELETE FROM `weenie` WHERE `class_Id` = 490245;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490245, 'portalMiteHolesurface', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490245,   1,      65536) /* ItemType - Portal */
     , (490245,  16,         32) /* ItemUseable - Remote */
     , (490245,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (490245, 111,         56) /* PortalBitmask - NoSummon, NoRecall, No NPK */
     , (490245, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490245,   1, True ) /* Stuck */
     , (490245,  11, False) /* IgnoreCollisions */
     , (490245,  12, True ) /* ReportCollisions */
     , (490245,  13, True ) /* Ethereal */
     , (490245,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490245,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490245,   1, 'Surface') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490245,   1, 0x02001945) /* Setup */
     , (490245,   2, 0x09000172) /* MotionTable */
     , (490245,   3, 0x2000008C) /* SoundTable */
     , (490245,   8, 0x0600106B) /* Icon */
     , (490245,  22, 0x3400002A) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490245, 2,  0xF6670010, 30.442831, 170.92848, 5.760960, 0.908682, 0, 0, -0.417489) /* Destination */
/* @teleloc 0x01C9022D [72.900002 -30.200001 0.000000] 0.139173 0.000000 0.000000 -0.990268 */;

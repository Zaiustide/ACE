DELETE FROM `weenie` WHERE `class_Id` = 86753002;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (86753002, 'seasonsTownSurfacePortal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (86753002,   1,      65536) /* ItemType - Portal */
     , (86753002,  16,         32) /* ItemUseable - Remote */
     , (86753002,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (86753002, 111,          1) /* PortalBitmask - Unrestricted */
     , (86753002, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (86753002,   1, True ) /* Stuck */
     , (86753002,  11, False) /* IgnoreCollisions */
     , (86753002,  12, True ) /* ReportCollisions */
     , (86753002,  13, True ) /* Ethereal */
     , (86753002,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (86753002,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (86753002,   1, 'Surface') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (86753002,   1, 0x020001B3) /* Setup */
     , (86753002,   2, 0x09000003) /* MotionTable */
     , (86753002,   8, 0x0600106B) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (86753002, 2, 0xE4D60014, 56.506828, 86.735535, 8.004999, -0.029580, 0, 0, 0.999562) /* Destination */
/* @teleloc 0xE4D60014[56.506828 86.735535 8.004999] -0.029580 0.000000 0.000000 0.999562*/;

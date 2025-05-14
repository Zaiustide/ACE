DELETE FROM `weenie` WHERE `class_Id` = 86753004;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (86753004, 'seasonsUpperHuntingGroundsPortal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (86753004,   1,      65536) /* ItemType - Portal */
     , (86753004,  16,         32) /* ItemUseable - Remote */
     , (86753004,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (86753004, 111,          1) /* PortalBitmask - Unrestricted */
     , (86753004, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (86753004,   1, True ) /* Stuck */
     , (86753004,  11, False) /* IgnoreCollisions */
     , (86753004,  12, True ) /* ReportCollisions */
     , (86753004,  13, True ) /* Ethereal */
     , (86753004,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (86753004,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (86753004,   1, 'Upper Hunting Grounds') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (86753004,   1, 0x020001B3) /* Setup */
     , (86753004,   2, 0x09000003) /* MotionTable */
     , (86753004,   8, 0x0600106B) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (86753004, 2, 0xE6D20103, 84.202477, 18.104725, 36.679371, 0.014687, 0, 0, -0.999892) /* Destination */
/* @teleloc 0xE6D20103 [84.202477 18.104725 36.679371] 0.014687 0.000000 0.000000 -0.999892*/;

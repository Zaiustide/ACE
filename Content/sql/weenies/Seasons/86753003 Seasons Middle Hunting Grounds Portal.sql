DELETE FROM `weenie` WHERE `class_Id` = 86753003;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (86753003, 'seasonsMiddleHuntingGroundsPortal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (86753003,   1,      65536) /* ItemType - Portal */
     , (86753003,  16,         32) /* ItemUseable - Remote */
     , (86753003,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (86753003, 111,          1) /* PortalBitmask - Unrestricted */
     , (86753003, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (86753003,   1, True ) /* Stuck */
     , (86753003,  11, False) /* IgnoreCollisions */
     , (86753003,  12, True ) /* ReportCollisions */
     , (86753003,  13, True ) /* Ethereal */
     , (86753003,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (86753003,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (86753003,   1, 'Middle Hunting Grounds') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (86753003,   1, 0x020001B3) /* Setup */
     , (86753003,   2, 0x09000003) /* MotionTable */
     , (86753003,   8, 0x0600106B) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (86753003, 2, 0xE6D20103, 84.202477, 18.104725, 36.679371, 0.014687, 0, 0, -0.999892) /* Destination */
/* @teleloc 0xE6D20103 [84.202477 18.104725 36.679371] 0.014687 0.000000 0.000000 -0.999892*/;

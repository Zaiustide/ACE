DELETE FROM `weenie` WHERE `class_Id` = 5110;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (5110, 'portalfroreexit', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (5110,   1,      65536) /* ItemType - Portal */
     , (5110,  16,         32) /* ItemUseable - Remote */
     , (5110,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (5110, 111,         56) /* PortalBitmask - NoSummon, NoRecall, No NPK */
     , (5110, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (5110,   1, True ) /* Stuck */
     , (5110,  11, False) /* IgnoreCollisions */
     , (5110,  12, True ) /* ReportCollisions */
     , (5110,  13, True ) /* Ethereal */
     , (5110,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (5110,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (5110,   1, 'Surface') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (5110,   1, 0x020001B3) /* Setup */
     , (5110,   2, 0x09000003) /* MotionTable */
     , (5110,   8, 0x0600106B) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (5110, 2, 0x7ACA0011, 50.517986, 20.562872, 200.004990, 0.871866, 0, 0, -0.489745) /* Destination */
/* @teleloc 0x7ACA0011 [50.517986 20.562872 200.004990] 0.871866 0.000000 0.000000 -0.489745 */;

DELETE FROM `weenie` WHERE `class_Id` = 490246;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490246, 'portalShrethCaverns', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490246,   1,      65536) /* ItemType - Portal */
     , (490246,  16,         32) /* ItemUseable - Remote */
     , (490246,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (490246, 111,         56) /* PortalBitmask - NoSummon, NoRecall, No NPK */
     , (490246, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490246,   1, True ) /* Stuck */
     , (490246,  11, False) /* IgnoreCollisions */
     , (490246,  12, True ) /* ReportCollisions */
     , (490246,  13, True ) /* Ethereal */
     , (490246,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490246,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490246,   1, 'Shreth Caverns') /* Name */
     ;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490246,   1, 0x02001945) /* Setup */
     , (490246,   2, 0x09000172) /* MotionTable */
     , (490246,   3, 0x2000008C) /* SoundTable */
     , (490246,   8, 0x0600106B) /* Icon */
     , (490246,  22, 0x3400002A) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490246, 2,  0x00c80371, 458.535000, -172.203000, 0.005000, 0.933007, 0, 0, -0.359859) /* Destination */
/* @teleloc 0x01C9022D [72.900002 -30.200001 0.000000] 0.139173 0.000000 0.000000 -0.990268 */;


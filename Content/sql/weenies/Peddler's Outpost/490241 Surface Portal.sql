DELETE FROM `weenie` WHERE `class_Id` = 490241;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490241, 'portalshrethcavernsurface', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490241,   1,      65536) /* ItemType - Portal */
     , (490241,  16,         32) /* ItemUseable - Remote */
     , (490241,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (490241, 111,         56) /* PortalBitmask - NoSummon, NoRecall, No NPK */
     , (490241, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490241,   1, True ) /* Stuck */
     , (490241,  11, False) /* IgnoreCollisions */
     , (490241,  12, True ) /* ReportCollisions */
     , (490241,  13, True ) /* Ethereal */
     , (490241,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490241,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490241,   1, 'Surface') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490241,   1, 0x02001945) /* Setup */
     , (490241,   2, 0x09000172) /* MotionTable */
     , (490241,   3, 0x2000008C) /* SoundTable */
     , (490241,   8, 0x0600106B) /* Icon */
     , (490241,  22, 0x3400002A) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490241, 2,  0xF9680016, 66.466080, 123.666725, 0.005000, -0.464050, 0, 0, 0.885809) /* Destination */
/* @teleloc 0x01C9022D [72.900002 -30.200001 0.000000] 0.139173 0.000000 0.000000 -0.990268 */;

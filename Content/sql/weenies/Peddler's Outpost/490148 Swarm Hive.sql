DELETE FROM `weenie` WHERE `class_Id` = 490148;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490148, 'portalswarmhive', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490148,   1,      65536) /* ItemType - Portal */
     , (490148,  16,         32) /* ItemUseable - Remote */
     , (490148,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (490148, 111,         56) /* PortalBitmask - NoSummon, NoRecall, No NPK */
     , (490148, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490148,   1, True ) /* Stuck */
     , (490148,  11, False) /* IgnoreCollisions */
     , (490148,  12, True ) /* ReportCollisions */
     , (490148,  13, True ) /* Ethereal */
     , (490148,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490148,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490148,   1, 'Swarm Hive') /* Name */
     , (490148,  37, 'PeddlersDungeonEntrySwarmHive');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490148,   1, 0x02001945) /* Setup */
     , (490148,   2, 0x09000172) /* MotionTable */
     , (490148,   3, 0x2000008C) /* SoundTable */
     , (490148,   8, 0x0600106B) /* Icon */
     , (490148,  22, 0x3400002A) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490148, 2, 0x00AE0786, 5.7503700256348, -49.95959854126, 0.005, 0.71442097425461, 0, 0, -0.69971597194672) /* Destination */
/* @teleloc 0x01C9022D [72.900002 -30.200001 0.000000] 0.139173 0.000000 0.000000 -0.990268 */;



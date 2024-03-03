DELETE FROM `weenie` WHERE `class_Id` = 490250;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490250, 'ace490250-Surfaceportal', 7, '2021-11-17 16:56:08') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490250,   1,      65536) /* ItemType - Portal */
     , (490250,  16,         32) /* ItemUseable - Remote */
     , (490250,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (490250, 111,         56) /* PortalBitmask - NoSummon, NoRecall, No NPK */
     , (490250, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490250,   1, True ) /* Stuck */
     , (490250,  11, False) /* IgnoreCollisions */
     , (490250,  12, True ) /* ReportCollisions */
     , (490250,  13, True ) /* Ethereal */
     , (490250,  15, True ) /* LightsStatus */;


INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490250,  54,       -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490250,   1, 'Surface') /* Name */
     , (490250,  16, 'A secret way out of the Swarm Nest.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490250,   1, 0x02001945) /* Setup */
     , (490250,   2, 0x09000172) /* MotionTable */
     , (490250,   3, 0x2000008C) /* SoundTable */
     , (490250,   8, 0x0600106B) /* Icon */
     , (490250,  22, 0x3400002A) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490250, 2,  0xF866002D, 141.809708,  114.755745,  50.442024,  0.254182, 0, 0, 0.967156);
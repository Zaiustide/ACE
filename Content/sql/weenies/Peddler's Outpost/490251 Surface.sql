DELETE FROM `weenie` WHERE `class_Id` = 490251;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490251, 'ace490251-Surfaceportalratw', 7, '2021-11-17 16:56:08') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490251,   1,      65536) /* ItemType - Portal */
     , (490251,  16,         32) /* ItemUseable - Remote */
     , (490251,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (490251, 111,         56) /* PortalBitmask - NoSummon, NoRecall, No NPK */
     , (490251, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490251,   1, True ) /* Stuck */
     , (490251,  11, False) /* IgnoreCollisions */
     , (490251,  12, True ) /* ReportCollisions */
     , (490251,  13, True ) /* Ethereal */
     , (490251,  15, True ) /* LightsStatus */;


INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490251,  54,       -0.1) /* UseRadius */
     , (490251,  39,     0.75) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490251,   1, 'Surface') /* Name */
     , (490251,  16, 'A secret way out of the Rat Nest.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490251,   1, 0x02001945) /* Setup */
     , (490251,   2, 0x09000172) /* MotionTable */
     , (490251,   3, 0x2000008C) /* SoundTable */
     , (490251,   8, 0x0600106B) /* Icon */
     , (490251,  22, 0x3400002A) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490251, 2,  0xF8680038, 148.792572,  184.294907,  53.605618,  0.079524, 0, 0, 0.996833);
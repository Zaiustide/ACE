DELETE FROM `weenie` WHERE `class_Id` = 490252;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490252, 'ace490252-Surfaceportalraat', 7, '2021-11-17 16:56:08') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490252,   1,      65536) /* ItemType - Portal */
     , (490252,  16,         32) /* ItemUseable - Remote */
     , (490252,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (490252, 111,         56) /* PortalBitmask - NoSummon, NoRecall, No NPK */
     , (490252, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490252,   1, True ) /* Stuck */
     , (490252,  11, False) /* IgnoreCollisions */
     , (490252,  12, True ) /* ReportCollisions */
     , (490252,  13, True ) /* Ethereal */
     , (490252,  15, True ) /* LightsStatus */;


INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490252,  54,       -0.1) /* UseRadius */
     , (490252,  39,     0.75) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490252,   1, 'Surface') /* Name */
     , (490252,  16, 'A secret way out of the Ancient Temple.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490252,   1, 0x02001945) /* Setup */
     , (490252,   2, 0x09000172) /* MotionTable */
     , (490252,   3, 0x2000008C) /* SoundTable */
     , (490252,   8, 0x0600106B) /* Icon */
     , (490252,  22, 0x3400002A) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490252, 2,  0xF8620038, 163.878128,  173.741394,  0.348489,  0.300734, 0, 0, -0.953708);
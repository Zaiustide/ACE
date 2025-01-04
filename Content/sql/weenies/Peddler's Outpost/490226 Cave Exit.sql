DELETE FROM `weenie` WHERE `class_Id` = 490226;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490226, 'ace490226-Caveexitportal', 7, '2021-11-17 16:56:08') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490226,   1,      65536) /* ItemType - Portal */
     , (490226,  16,         32) /* ItemUseable - Remote */
     , (490226,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (490226, 111,         56) /* PortalBitmask - NoSummon, NoRecall, No NPK */
     , (490226, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (490226, 267,         120) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490226,   1, True ) /* Stuck */
     , (490226,  11, False) /* IgnoreCollisions */
     , (490226,  12, True ) /* ReportCollisions */
     , (490226,  13, True ) /* Ethereal */
     , (490226,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490226,  54,       -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490226,   1, 'Cave Exit') /* Name */
     , (490226,  16, 'A secret way out of the Dragon''s Den.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490226,   1, 0x02001945) /* Setup */
     , (490226,   2, 0x09000172) /* MotionTable */
     , (490226,   3, 0x2000008C) /* SoundTable */
     , (490226,   8, 0x0600106B) /* Icon */
     , (490226,  22, 0x3400002A) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490226, 2,  0xF6620023, 106.283958, 50.604279, 0.222023, -0.723892, 0.000000, 0.000000,-0.689914);


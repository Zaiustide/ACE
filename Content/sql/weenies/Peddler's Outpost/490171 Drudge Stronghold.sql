DELETE FROM `weenie` WHERE `class_Id` = 490171;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490171, 'ace490171-Drudge Stronghold', 7, '2022-08-22 03:09:27') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES  (490171,   1,      65536) /* ItemType - Portal */
     , (490171,  16,         32) /* ItemUseable - Remote */
     , (490171,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (490171, 111,         56) /* PortalBitmask - NoSummon, NoRecall, No NPK */
     , (490171, 133,          4) /* ShowableOnRadar - ShowAlways */
	 , (490171, 267,       1800) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490171,   1, True ) /* Stuck */
     , (490171,  11, False) /* IgnoreCollisions */
     , (490171,  12, True ) /* ReportCollisions */
     , (490171,  13, True ) /* Ethereal */
     , (490171,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490171,  54,     0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490171,   1, 'Drudge Stronghold') /* Name */
     , (490171,  16, 'This portal cannot be recalled, linked nor summoned.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490171,   1, 0x02001945) /* Setup */
     , (490171,   2, 0x09000172) /* MotionTable */
     , (490171,   3, 0x2000008C) /* SoundTable */
     , (490171,   8, 0x0600106B) /* Icon */
     , (490171,  22, 0x3400002A) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490171, 2, 0x00260329, 139.693954, -101.428970, -4.576775, 0.918604, 0, 0, 0.395179) /* Destination */
/* @teleloc 0x01C9022D [72.900002 -30.200001 0.000000] 0.139173 0.000000 0.000000 -0.990268 */;







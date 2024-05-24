DELETE FROM `weenie` WHERE `class_Id` = 4200087;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4200087, 'portaltconetenduels', 7, '2022-01-25 10:00:00') /* Podtide's Town Master's Portal to Ayan Baqur */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4200087,   1,      65536) /* ItemType - Portal */
     , (4200087,  16,         32) /* ItemUseable - Remote */
     , (4200087,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (4200087, 111,          48) /* idk blocked or sth ask tindale -- plus ev thinks its untieable unrecallable unsummonable but hes an idiot */
     , (4200087, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4200087,   1, True ) /* Stuck */
     , (4200087,  11, False) /* IgnoreCollisions */
     , (4200087,  12, True ) /* ReportCollisions */
     , (4200087,  13, True ) /* Ethereal */
     , (4200087,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4200087,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4200087,   1, 'Portal to One Ten Duels') /* Name --*/;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4200087,   1, 0x020001B3) /* Setup */
     , (4200087,   2, 0x09000003) /* MotionTable */
     , (4200087,   8, 0x0600106B) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (4200087, 2, 0x039D02A4, 99.8339, -48.9272, 48.005, -0.999985, 0, 0, 0.005419) /* Destination */
/* @teleloc 0x039D02A4 [99.833900 -48.927200 48.005001] -0.999985 0.000000 0.000000 0.005419 */;

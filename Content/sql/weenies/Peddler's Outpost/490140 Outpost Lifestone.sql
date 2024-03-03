DELETE FROM `weenie` WHERE `class_Id` = 490140;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490140, 'Outpostlifestone', 25, '2005-02-09 10:00:00') /* LifeStone */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490140,   1,  268435456) /* ItemType - LifeStone */
     , (490140,  16,         32) /* ItemUseable - Remote */
     , (490140,  93,       1040) /* PhysicsState - IgnoreCollisions, Gravity */
     , (490140, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490140,   1, True ) /* Stuck */
     , (490140,  12, False) /* ReportCollisions */
     , (490140,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490140,  54,       2) /* UseRadius */
, (490140,  39,    1.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490140,   1, 'Life Stone') /* Name */
     , (490140,  14, 'Use this item to set your resurrection point.') /* Use */
     , (490140,  18, 'You have attuned your spirit to this Lifestone. You will resurrect here after you die.') /* UseMessage */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490140,   1, 0x0200107D) /* Setup */
     , (490140,   2, 0x09000150) /* MotionTable */
     , (490140,   3, 0x20000014) /* SoundTable */
     , (490140,   8, 0x06001355) /* Icon */;

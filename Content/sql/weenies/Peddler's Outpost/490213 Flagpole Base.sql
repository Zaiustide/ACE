DELETE FROM `weenie` WHERE `class_Id` = 490213;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490213, 'Flagbase', 19, '2005-02-09 10:00:00') /* LifeStone */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490213,   1,        128) /* ItemType - Misc */
     , (490213,   8,        500) /* Mass */
     , (490213,  16,          1) /* ItemUseable - No */
     , (490213,  19,          0) /* Value */
     , (490213,  38,     500000) /* ResistLockpick */
     , (490213,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490213,   1, True ) /* Stuck */
     , (490213,   2, False) /* Open */
     , (490213,   3, True ) /* Locked */
     , (490213,  11, False) /* IgnoreCollisions */
     , (490213,  12, True ) /* ReportCollisions */
     , (490213,  13, False) /* Ethereal */
     , (490213,  14, False) /* GravityStatus */
	 , (490213,  19, True ) /* Attackable */
     , (490213,  24, True ) /* UiHidden */
     , (490213,  33, False) /* ResetMessagePending */
     , (490213,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490213,  54,       2) /* UseRadius */
, (490213,  39,    1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490213,   1, 'Flag Pole Base') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490213,   1, 0x020006CD) /* Setup */
     , (490213,   2, 0x09000150) /* MotionTable */
     , (490213,   3, 0x20000014) /* SoundTable */
     , (490213,   8, 0x06001355) /* Icon */;
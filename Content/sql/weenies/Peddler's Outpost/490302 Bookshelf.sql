DELETE FROM `weenie` WHERE `class_Id` = 490302;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490302, 'bookshelfoutpost', 19, '2005-02-09 10:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490302,   1,        128) /* ItemType - Misc */
     , (490302,   8,        500) /* Mass */
     , (490302,  16,          1) /* ItemUseable - No */
     , (490302,  19,          0) /* Value */
     , (490302,  38,     500000) /* ResistLockpick */
     , (490302,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490302,   1, True ) /* Stuck */
     , (490302,   2, False) /* Open */
     , (490302,   3, True ) /* Locked */
     , (490302,  11, False) /* IgnoreCollisions */
     , (490302,  12, True ) /* ReportCollisions */
     , (490302,  13, False) /* Ethereal */
     , (490302,  14, False) /* GravityStatus */
	 , (490302,  19, True ) /* Attackable */
     , (490302,  24, True ) /* UiHidden */
     , (490302,  33, False) /* ResetMessagePending */
     , (490302,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490302,  11,     300) /* ResetInterval */
     , (490302,  39,       1) /* DefaultScale */
     , (490302,  54,       1) /* UseRadius */;
	 
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490302,   1, 'Bookshelf') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490302,   1, 0x0200096C) /* Setup */
     , (490302,   2, 0x090000FD) /* MotionTable */
     , (490302,   3, 0x2000008C) /* SoundTable */
     , (490302,   8, 0x06001356) /* Icon */
     , (490302,  22, 0x3400005B) /* PhysicsEffectTable */;


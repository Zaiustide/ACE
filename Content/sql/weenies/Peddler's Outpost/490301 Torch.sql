DELETE FROM `weenie` WHERE `class_Id` = 490301;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490301, 'torchoutpost', 19, '2005-02-09 10:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490301,   1,        128) /* ItemType - Misc */
     , (490301,   8,        500) /* Mass */
     , (490301,  16,          1) /* ItemUseable - No */
     , (490301,  19,          0) /* Value */
     , (490301,  38,     500000) /* ResistLockpick */
     , (490301,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490301,   1, True ) /* Stuck */
     , (490301,   2, False) /* Open */
     , (490301,   3, True ) /* Locked */
     , (490301,  11, False) /* IgnoreCollisions */
     , (490301,  12, True ) /* ReportCollisions */
     , (490301,  13, False) /* Ethereal */
     , (490301,  14, False) /* GravityStatus */
	 , (490301,  19, True ) /* Attackable */
     , (490301,  24, True ) /* UiHidden */
     , (490301,  33, False) /* ResetMessagePending */
     , (490301,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490301,  11,     300) /* ResetInterval */
     , (490301,  39,       1) /* DefaultScale */
     , (490301,  54,       1) /* UseRadius */;
;
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490301,   1, 'Torch') /* Name */
     , (490301,  15, 'A torch.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490301,   1, 0x020001E5) /* Setup */
     , (490301,   2, 0x09000096) /* MotionTable */
     , (490301,   3, 0x20000044) /* SoundTable */
     , (490301,   8, 0x06001072) /* Icon */
     , (490301,  22, 0x3400002B) /* PhysicsEffectTable */;


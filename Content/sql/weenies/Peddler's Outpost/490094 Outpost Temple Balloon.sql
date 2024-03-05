DELETE FROM `weenie` WHERE `class_Id` = 490094;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490094, 'OutposttempleBalloon', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490094,   1,        128) /* ItemType - Misc */
     , (490094,   8,        500) /* Mass */
     , (490094,  16,          1) /* ItemUseable - No */
     , (490094,  19,          0) /* Value */
     , (490094,  38,     500000) /* ResistLockpick */
     , (490094,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490094,   1, True ) /* Stuck */
     , (490094,   2, False) /* Open */
     , (490094,   3, True ) /* Locked */
     , (490094,  11, False) /* IgnoreCollisions */
     , (490094,  12, True ) /* ReportCollisions */
     , (490094,  13, False) /* Ethereal */
     , (490094,  14, False) /* GravityStatus */
     , (490094,  24, True ) /* UiHidden */
	 , (490094,  19, True ) /* Attackable */
     , (490094,  33, False) /* ResetMessagePending */
     , (490094,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490094,  11,     300) /* ResetInterval */
     , (490094,  39,       1) /* DefaultScale */
     , (490094,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490094,   1, 'Gate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490094,   1,   0x020016F1) /* Setup */
     , (490094,   3,  536870947) /* SoundTable */
     , (490094,   8,  100668183) /* Icon */
     , (490094,  22,  872415275) /* PhysicsEffectTable */;

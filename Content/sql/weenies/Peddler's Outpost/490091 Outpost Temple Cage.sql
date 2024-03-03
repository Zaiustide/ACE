DELETE FROM `weenie` WHERE `class_Id` = 490091;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490091, 'Outposttemplecage', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490091,   1,        128) /* ItemType - Misc */
     , (490091,   8,        500) /* Mass */
     , (490091,  16,          1) /* ItemUseable - No */
     , (490091,  19,          0) /* Value */
     , (490091,  38,     500000) /* ResistLockpick */
     , (490091,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490091,   1, True ) /* Stuck */
     , (490091,   2, False) /* Open */
     , (490091,   3, True ) /* Locked */
     , (490091,  11, False) /* IgnoreCollisions */
     , (490091,  12, True ) /* ReportCollisions */
     , (490091,  13, False) /* Ethereal */
	 , (490091,  19, True ) /* Attackable */
     , (490091,  14, False) /* GravityStatus */
     , (490091,  24, True ) /* UiHidden */
     , (490091,  33, False) /* ResetMessagePending */
     , (490091,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490091,  11,     300) /* ResetInterval */
     , (490091,  39,       1) /* DefaultScale */
     , (490091,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490091,   1, 'Gate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490091,   1,   0x0200193A) /* Setup */
     , (490091,   3,  536870947) /* SoundTable */
     , (490091,   8,  100668183) /* Icon */
     , (490091,  22,  872415275) /* PhysicsEffectTable */;

DELETE FROM `weenie` WHERE `class_Id` = 490096;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490096, 'Outposttempletent', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490096,   1,        128) /* ItemType - Misc */
     , (490096,   8,        500) /* Mass */
     , (490096,  16,          1) /* ItemUseable - No */
     , (490096,  19,          0) /* Value */
     , (490096,  38,     500000) /* ResistLockpick */
     , (490096,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490096,   1, True ) /* Stuck */
     , (490096,   2, False) /* Open */
     , (490096,   3, True ) /* Locked */
     , (490096,  11, False) /* IgnoreCollisions */
     , (490096,  12, True ) /* ReportCollisions */
     , (490096,  13, False) /* Ethereal */
     , (490096,  14, False) /* GravityStatus */
	 , (490096,  19, True ) /* Attackable */
     , (490096,  24, True ) /* UiHidden */
     , (490096,  33, False) /* ResetMessagePending */
     , (490096,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490096,  11,     300) /* ResetInterval */
     , (490096,  39,       1) /* DefaultScale */
     , (490096,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490096,   1, 'Gate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490096,   1,   0x02001745) /* Setup */
     , (490096,   3,  536870947) /* SoundTable */
     , (490096,   8,  100668183) /* Icon */
     , (490096,  22,  872415275) /* PhysicsEffectTable */;

DELETE FROM `weenie` WHERE `class_Id` = 490098;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490098, 'Outposttemplegate', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490098,   1,        128) /* ItemType - Misc */
     , (490098,   8,        500) /* Mass */
     , (490098,  16,          1) /* ItemUseable - No */
     , (490098,  19,          0) /* Value */
     , (490098,  38,     500000) /* ResistLockpick */
     , (490098,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490098,   1, True ) /* Stuck */
     , (490098,   2, False) /* Open */
     , (490098,   3, True ) /* Locked */
     , (490098,  11, False) /* IgnoreCollisions */
     , (490098,  12, True ) /* ReportCollisions */
     , (490098,  13, False) /* Ethereal */
     , (490098,  14, False) /* GravityStatus */
	 , (490098,  19, True ) /* Attackable */
     , (490098,  24, True ) /* UiHidden */
     , (490098,  33, False) /* ResetMessagePending */
     , (490098,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490098,  11,     300) /* ResetInterval */
     , (490098,  39,       1) /* DefaultScale */
     , (490098,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490098,   1, 'Gate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490098,   1,   0x0200167D) /* Setup */
     , (490098,   3,  536870947) /* SoundTable */
     , (490098,   8,  100668183) /* Icon */
     , (490098,  22,  872415275) /* PhysicsEffectTable */;

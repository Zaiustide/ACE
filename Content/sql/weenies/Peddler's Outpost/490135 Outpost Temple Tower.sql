DELETE FROM `weenie` WHERE `class_Id` = 490135;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490135, 'Temple Tower2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490135,   1,        128) /* ItemType - Misc */
     , (490135,   8,        500) /* Mass */
     , (490135,  16,          1) /* ItemUseable - No */
     , (490135,  19,          0) /* Value */
     , (490135,  38,     500000) /* ResistLockpick */
     , (490135,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490135,   1, True ) /* Stuck */
     , (490135,   2, False) /* Open */
     , (490135,   3, True ) /* Locked */
     , (490135,  11, False) /* IgnoreCollisions */
     , (490135,  12, True ) /* ReportCollisions */
     , (490135,  13, False) /* Ethereal */
	 , (490135,  19, True ) /* Attackable */
     , (490135,  14, False) /* GravityStatus */
     , (490135,  24, True ) /* UiHidden */
     , (490135,  33, False) /* ResetMessagePending */
     , (490135,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490135,  11,     300) /* ResetInterval */
     , (490135,  39,       7) /* DefaultScale */
     , (490135,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490135,   1, 'Tower') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490135,   1,   0x0200187E) /* Setup */
     , (490135,   3,  536870947) /* SoundTable */
     , (490135,   8,  100668183) /* Icon */
     , (490135,  22,  872415275) /* PhysicsEffectTable */;

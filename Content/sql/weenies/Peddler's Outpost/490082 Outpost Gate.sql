DELETE FROM `weenie` WHERE `class_Id` = 490082;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490082, 'Outposttemple2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490082,   1,        128) /* ItemType - Misc */
     , (490082,   8,        500) /* Mass */
     , (490082,  16,          1) /* ItemUseable - No */
     , (490082,  19,          0) /* Value */
     , (490082,  38,     500000) /* ResistLockpick */
     , (490082,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490082,   1, True ) /* Stuck */
     , (490082,   2, False) /* Open */
     , (490082,   3, True ) /* Locked */
     , (490082,  11, False) /* IgnoreCollisions */
     , (490082,  12, True ) /* ReportCollisions */
     , (490082,  13, False) /* Ethereal */
     , (490082,  14, False) /* GravityStatus */
	 	 , (490082,  19, True ) /* Attackable */
     , (490082,  24, True ) /* UiHidden */
     , (490082,  33, False) /* ResetMessagePending */
     , (490082,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490082,  11,     300) /* ResetInterval */
     , (490082,  39,       1) /* DefaultScale */
     , (490082,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490082,   1, 'Gate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490082,   1,   0x02001A92) /* Setup */
     , (490082,   3,  536870947) /* SoundTable */
     , (490082,   8,  100668183) /* Icon */
     , (490082,  22,  872415275) /* PhysicsEffectTable */;

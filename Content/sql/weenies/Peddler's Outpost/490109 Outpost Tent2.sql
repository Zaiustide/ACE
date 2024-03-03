DELETE FROM `weenie` WHERE `class_Id` = 490109;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490109, 'Outpost Tent2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490109,   1,        128) /* ItemType - Misc */
     , (490109,   8,        500) /* Mass */
     , (490109,  16,          1) /* ItemUseable - No */
     , (490109,  19,          0) /* Value */
     , (490109,  38,     500000) /* ResistLockpick */
     , (490109,  93,          8) /* PhysicsState - ReportCollisions */;
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490109,   1, True ) /* Stuck */
     , (490109,   2, False) /* Open */
     , (490109,   3, True ) /* Locked */
     , (490109,  11, False) /* IgnoreCollisions */
     , (490109,  12, True ) /* ReportCollisions */
     , (490109,  13, False) /* Ethereal */
     , (490109,  14, False) /* GravityStatus */
	 , (490109,  19, True ) /* Attackable */
     , (490109,  24, True ) /* UiHidden */
     , (490109,  33, False) /* ResetMessagePending */
     , (490109,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490109,  11,     300) /* ResetInterval */
     , (490109,  39,       1) /* DefaultScale */
     , (490109,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490109,   1, 'Outpost Tent2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490109,   1,   0x02000B68) /* Setup */
     , (490109,   3,  536870947) /* SoundTable */
     , (490109,   8,  100668183) /* Icon */
     , (490109,  22,  872415275) /* PhysicsEffectTable */;

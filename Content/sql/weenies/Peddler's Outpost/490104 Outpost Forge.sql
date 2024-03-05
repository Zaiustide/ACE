DELETE FROM `weenie` WHERE `class_Id` = 490104;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490104, 'Outpost Forge', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490104,   1,        128) /* ItemType - Misc */
     , (490104,   8,        500) /* Mass */
     , (490104,  16,          1) /* ItemUseable - No */
     , (490104,  19,          0) /* Value */
     , (490104,  38,     500000) /* ResistLockpick */
     , (490104,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490104,   1, True ) /* Stuck */
     , (490104,   2, False) /* Open */
     , (490104,   3, True ) /* Locked */
     , (490104,  11, False) /* IgnoreCollisions */
     , (490104,  12, True ) /* ReportCollisions */
     , (490104,  13, False) /* Ethereal */
     , (490104,  14, False) /* GravityStatus */
	 , (490104,  19, True ) /* Attackable */
     , (490104,  24, True ) /* UiHidden */
     , (490104,  33, False) /* ResetMessagePending */
     , (490104,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490104,  11,     300) /* ResetInterval */
     , (490104,  39,       1) /* DefaultScale */
     , (490104,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490104,   1, 'Outpost Forge') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490104,   1,   0x0200124B) /* Setup */
     , (490104,   3,  536870947) /* SoundTable */
     , (490104,   8,  100668183) /* Icon */
     , (490104,  22,  872415275) /* PhysicsEffectTable */;

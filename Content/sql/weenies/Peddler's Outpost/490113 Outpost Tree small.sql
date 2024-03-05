DELETE FROM `weenie` WHERE `class_Id` = 490113;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490113, 'Outpost Tree3 small', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490113,   1,        128) /* ItemType - Misc */
     , (490113,   8,        500) /* Mass */
     , (490113,  16,          1) /* ItemUseable - No */
     , (490113,  19,          0) /* Value */
     , (490113,  38,     500000) /* ResistLockpick */
     , (490113,  93,          8) /* PhysicsState - ReportCollisions */;
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490113,   1, True ) /* Stuck */
     , (490113,   2, False) /* Open */
     , (490113,   3, True ) /* Locked */
     , (490113,  11, False) /* IgnoreCollisions */
     , (490113,  12, True ) /* ReportCollisions */
     , (490113,  13, False) /* Ethereal */
     , (490113,  14, False) /* GravityStatus */
     , (490113,  24, True ) /* UiHidden */
	 , (490113,  19, True ) /* Attackable */
     , (490113,  33, False) /* ResetMessagePending */
     , (490113,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490113,  11,     300) /* ResetInterval */
     , (490113,  39,       2) /* DefaultScale */
     , (490113,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490113,   1, 'Outpost Tree3 small') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490113,   1,   0x020007D4) /* Setup */
     , (490113,   3,  536870947) /* SoundTable */
     , (490113,   8,  100668183) /* Icon */
     , (490113,  22,  872415275) /* PhysicsEffectTable */;

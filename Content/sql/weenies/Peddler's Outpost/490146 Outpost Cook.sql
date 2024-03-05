DELETE FROM `weenie` WHERE `class_Id` = 490146;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490146, 'Outpost cook', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490146,   1,        128) /* ItemType - Misc */
     , (490146,   8,        500) /* Mass */
     , (490146,  16,          1) /* ItemUseable - No */
     , (490146,  19,          0) /* Value */
     , (490146,  38,     500000) /* ResistLockpick */
     , (490146,  93,          8) /* PhysicsState - ReportCollisions */;
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490146,   1, True ) /* Stuck */
     , (490146,   2, False) /* Open */
     , (490146,   3, True ) /* Locked */
     , (490146,  11, False) /* IgnoreCollisions */
     , (490146,  12, True ) /* ReportCollisions */
     , (490146,  13, False) /* Ethereal */
     , (490146,  14, False) /* GravityStatus */
	 , (490146,  19, True ) /* Attackable */
     , (490146,  24, True ) /* UiHidden */
     , (490146,  33, False) /* ResetMessagePending */
     , (490146,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490146,  11,     300) /* ResetInterval */
     , (490146,  39,       1) /* DefaultScale */
     , (490146,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490146,   1, 'Outpost cook') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490146,   1,   0x02000345) /* Setup */
     , (490146,   3,  536870947) /* SoundTable */
     , (490146,   8,  100668183) /* Icon */
     , (490146,  22,  872415275) /* PhysicsEffectTable */;

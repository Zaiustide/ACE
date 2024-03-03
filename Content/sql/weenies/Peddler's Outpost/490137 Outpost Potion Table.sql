DELETE FROM `weenie` WHERE `class_Id` = 490137;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490137, 'Outpostpotiontable', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490137,   1,        128) /* ItemType - Misc */
     , (490137,   8,        500) /* Mass */
     , (490137,  16,          1) /* ItemUseable - No */
     , (490137,  19,          0) /* Value */
     , (490137,  38,     500000) /* ResistLockpick */
     , (490137,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490137,   1, True ) /* Stuck */
     , (490137,   2, False) /* Open */
     , (490137,   3, True ) /* Locked */
     , (490137,  11, False) /* IgnoreCollisions */
     , (490137,  12, True ) /* ReportCollisions */
     , (490137,  13, False) /* Ethereal */
     , (490137,  14, False) /* GravityStatus */
	 , (490137,  19, True ) /* Attackable */
     , (490137,  24, True ) /* UiHidden */
     , (490137,  33, False) /* ResetMessagePending */
     , (490137,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490137,  11,     300) /* ResetInterval */
     , (490137,  39,       1) /* DefaultScale */
     , (490137,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490137,   1, 'Potion table') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490137,   1,   0x020012A0) /* Setup */
     , (490137,   3,  536870947) /* SoundTable */
     , (490137,   8,  100668183) /* Icon */
     , (490137,  22,  872415275) /* PhysicsEffectTable */;

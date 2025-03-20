DELETE FROM `weenie` WHERE `class_Id` = 490100;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490100, 'Outpost Tree', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490100,   1,        128) /* ItemType - Misc */
     , (490100,   8,        500) /* Mass */
     , (490100,  16,          1) /* ItemUseable - No */
     , (490100,  19,          0) /* Value */
     , (490100,  38,     500000) /* ResistLockpick */
     , (490100,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490100,   1, True ) /* Stuck */
     , (490100,   2, False) /* Open */
     , (490100,   3, True ) /* Locked */
     , (490100,  11, False) /* IgnoreCollisions */
     , (490100,  12, True ) /* ReportCollisions */
     , (490100,  13, False) /* Ethereal */
     , (490100,  14, False) /* GravityStatus */
     , (490100,  24, True ) /* UiHidden */
	 , (490100,  19, True ) /* Attackable */
     , (490100,  33, False) /* ResetMessagePending */
     , (490100,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490100,  11,     300) /* ResetInterval */
     , (490100,  39,       5) /* DefaultScale */
     , (490100,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490100,   1, 'Outpost Fly Trap') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490100,   1,   0x020012FC) /* Setup */
     , (490100,   3,  536870947) /* SoundTable */
     , (490100,   8,  100668183) /* Icon */
     , (490100,  22,  872415275) /* PhysicsEffectTable */;

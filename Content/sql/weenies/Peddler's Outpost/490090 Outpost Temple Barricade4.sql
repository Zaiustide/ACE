DELETE FROM `weenie` WHERE `class_Id` = 490090;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490090, 'OutposttempleBarricade4', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490090,   1,        128) /* ItemType - Misc */
     , (490090,   8,        500) /* Mass */
     , (490090,  16,          1) /* ItemUseable - No */
     , (490090,  19,          0) /* Value */
     , (490090,  38,     500000) /* ResistLockpick */
     , (490090,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490090,   1, True ) /* Stuck */
     , (490090,   2, False) /* Open */
     , (490090,   3, True ) /* Locked */
     , (490090,  11, False) /* IgnoreCollisions */
     , (490090,  12, True ) /* ReportCollisions */
     , (490090,  13, False) /* Ethereal */
	 , (490090,  19, True ) /* Attackable */
     , (490090,  14, False) /* GravityStatus */
     , (490090,  24, True ) /* UiHidden */
     , (490090,  33, False) /* ResetMessagePending */
     , (490090,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490090,  11,     300) /* ResetInterval */
     , (490090,  39,       1) /* DefaultScale */
     , (490090,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490090,   1, 'Gate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490090,   1,   0x0200193C) /* Setup */
     , (490090,   3,  536870947) /* SoundTable */
     , (490090,   8,  100668183) /* Icon */
     , (490090,  22,  872415275) /* PhysicsEffectTable */;

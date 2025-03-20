DELETE FROM `weenie` WHERE `class_Id` = 490087;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490087, 'OutposttempleBarricade', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490087,   1,        128) /* ItemType - Misc */
     , (490087,   8,        500) /* Mass */
     , (490087,  16,          1) /* ItemUseable - No */
     , (490087,  19,          0) /* Value */
     , (490087,  38,     500000) /* ResistLockpick */
     , (490087,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490087,   1, True ) /* Stuck */
     , (490087,   2, False) /* Open */
     , (490087,   3, True ) /* Locked */
     , (490087,  11, False) /* IgnoreCollisions */
     , (490087,  12, True ) /* ReportCollisions */
     , (490087,  13, False) /* Ethereal */
	 , (490087,  19, True ) /* Attackable */
     , (490087,  14, False) /* GravityStatus */
     , (490087,  24, True ) /* UiHidden */
     , (490087,  33, False) /* ResetMessagePending */
     , (490087,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490087,  11,     300) /* ResetInterval */
     , (490087,  39,       1) /* DefaultScale */
     , (490087,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490087,   1, 'Gate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490087,   1,   0x0200193F) /* Setup */
     , (490087,   3,  536870947) /* SoundTable */
     , (490087,   8,  100668183) /* Icon */
     , (490087,  22,  872415275) /* PhysicsEffectTable */;

DELETE FROM `weenie` WHERE `class_Id` = 490117;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490117, 'Outpost Large Tree', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490117,   1,        128) /* ItemType - Misc */
     , (490117,   8,        500) /* Mass */
     , (490117,  16,          1) /* ItemUseable - No */
     , (490117,  19,          0) /* Value */
     , (490117,  38,     500000) /* ResistLockpick */
     , (490117,  93,          8) /* PhysicsState - ReportCollisions */;
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490117,   1, True ) /* Stuck */
     , (490117,   2, False) /* Open */
     , (490117,   3, True ) /* Locked */
     , (490117,  11, False) /* IgnoreCollisions */
     , (490117,  12, True ) /* ReportCollisions */
     , (490117,  13, False) /* Ethereal */
	 , (490117,  19, True ) /* Attackable */
     , (490117,  14, False) /* GravityStatus */
     , (490117,  24, True ) /* UiHidden */
     , (490117,  33, False) /* ResetMessagePending */
     , (490117,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490117,  11,     300) /* ResetInterval */
     , (490117,  39,       2) /* DefaultScale */
     , (490117,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490117,   1, 'Outpost Large Tree') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490117,   1,   0x020004BE) /* Setup */
     , (490117,   3,  536870947) /* SoundTable */
     , (490117,   8,  100668183) /* Icon */
     , (490117,  22,  872415275) /* PhysicsEffectTable */;

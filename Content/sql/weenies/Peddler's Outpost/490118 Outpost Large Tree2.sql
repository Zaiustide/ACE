DELETE FROM `weenie` WHERE `class_Id` = 490118;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490118, 'Outpost Large Tree2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490118,   1,        128) /* ItemType - Misc */
     , (490118,   8,        500) /* Mass */
     , (490118,  16,          1) /* ItemUseable - No */
     , (490118,  19,          0) /* Value */
     , (490118,  38,     500000) /* ResistLockpick */
     , (490118,  93,          8) /* PhysicsState - ReportCollisions */;
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490118,   1, True ) /* Stuck */
     , (490118,   2, False) /* Open */
     , (490118,   3, True ) /* Locked */
     , (490118,  11, False) /* IgnoreCollisions */
     , (490118,  12, True ) /* ReportCollisions */
     , (490118,  13, False) /* Ethereal */
	 , (490118,  19, True ) /* Attackable */
     , (490118,  14, False) /* GravityStatus */
     , (490118,  24, True ) /* UiHidden */
     , (490118,  33, False) /* ResetMessagePending */
     , (490118,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490118,  11,     300) /* ResetInterval */
     , (490118,  39,       2) /* DefaultScale */
     , (490118,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490118,   1, 'Outpost Large Tree2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490118,   1,   0x020003EA) /* Setup */
     , (490118,   3,  536870947) /* SoundTable */
     , (490118,   8,  100668183) /* Icon */
     , (490118,  22,  872415275) /* PhysicsEffectTable */;

DELETE FROM `weenie` WHERE `class_Id` = 490101;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490101, 'Outpost Tree2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490101,   1,        128) /* ItemType - Misc */
     , (490101,   8,        500) /* Mass */
     , (490101,  16,          1) /* ItemUseable - No */
     , (490101,  19,          0) /* Value */
     , (490101,  38,     500000) /* ResistLockpick */
     , (490101,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490101,   1, True ) /* Stuck */
     , (490101,   2, False) /* Open */
     , (490101,   3, True ) /* Locked */
     , (490101,  11, False) /* IgnoreCollisions */
     , (490101,  12, True ) /* ReportCollisions */
     , (490101,  13, False) /* Ethereal */
     , (490101,  14, False) /* GravityStatus */
	 , (490101,  19, True ) /* Attackable */
     , (490101,  24, True ) /* UiHidden */
     , (490101,  33, False) /* ResetMessagePending */
     , (490101,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490101,  11,     300) /* ResetInterval */
     , (490101,  39,       3) /* DefaultScale */
     , (490101,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490101,   1, 'Outpost Fly Trap 2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490101,   1,   0x020012FD) /* Setup */
     , (490101,   3,  536870947) /* SoundTable */
     , (490101,   8,  100668183) /* Icon */
     , (490101,  22,  872415275) /* PhysicsEffectTable */;

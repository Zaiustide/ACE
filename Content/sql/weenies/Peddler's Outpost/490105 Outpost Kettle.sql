DELETE FROM `weenie` WHERE `class_Id` = 490105;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490105, 'Outpost Kettle', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490105,   1,        128) /* ItemType - Misc */
     , (490105,   8,        500) /* Mass */
     , (490105,  16,          1) /* ItemUseable - No */
     , (490105,  19,          0) /* Value */
     , (490105,  38,     500000) /* ResistLockpick */
     , (490105,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490105,   1, True ) /* Stuck */
     , (490105,   2, False) /* Open */
     , (490105,   3, True ) /* Locked */
     , (490105,  11, False) /* IgnoreCollisions */
     , (490105,  12, True ) /* ReportCollisions */
     , (490105,  13, False) /* Ethereal */
     , (490105,  14, False) /* GravityStatus */
	 , (490105,  19, True ) /* Attackable */
     , (490105,  24, True ) /* UiHidden */
     , (490105,  33, False) /* ResetMessagePending */
     , (490105,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490105,  11,     300) /* ResetInterval */
     , (490105,  39,       1) /* DefaultScale */
     , (490105,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490105,   1, 'Outpost Kettle') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490105,   1,   0x0200124A) /* Setup */
     , (490105,   3,  536870947) /* SoundTable */
     , (490105,   8,  100668183) /* Icon */
     , (490105,  22,  872415275) /* PhysicsEffectTable */;

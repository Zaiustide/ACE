DELETE FROM `weenie` WHERE `class_Id` = 490115;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490115, 'Outpost Torch3', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490115,   1,        128) /* ItemType - Misc */
     , (490115,   8,        500) /* Mass */
     , (490115,  16,          1) /* ItemUseable - No */
     , (490115,  19,          0) /* Value */
     , (490115,  38,     500000) /* ResistLockpick */
     , (490115,  93,          8) /* PhysicsState - ReportCollisions */;
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490115,   1, True ) /* Stuck */
     , (490115,   2, False) /* Open */
     , (490115,   3, True ) /* Locked */
     , (490115,  11, False) /* IgnoreCollisions */
     , (490115,  12, True ) /* ReportCollisions */
     , (490115,  13, False) /* Ethereal */
     , (490115,  14, False) /* GravityStatus */
     , (490115,  24, True ) /* UiHidden */
	 , (490115,  19, True ) /* Attackable */
     , (490115,  33, False) /* ResetMessagePending */
     , (490115,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490115,  11,     300) /* ResetInterval */
     , (490115,  39,       1) /* DefaultScale */
     , (490115,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490115,   1, 'Outpost Torch3') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490115,   1,   0x02000627) /* Setup */
     , (490115,   3,  536870947) /* SoundTable */
     , (490115,   8,  100668183) /* Icon */
     , (490115,  22,  872415275) /* PhysicsEffectTable */;

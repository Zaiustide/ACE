DELETE FROM `weenie` WHERE `class_Id` = 490143;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490143, 'Outpost Tent6', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490143,   1,        128) /* ItemType - Misc */
     , (490143,   8,        500) /* Mass */
     , (490143,  16,          1) /* ItemUseable - No */
     , (490143,  19,          0) /* Value */
     , (490143,  38,     500000) /* ResistLockpick */
     , (490143,  93,          8) /* PhysicsState - ReportCollisions */;
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490143,   1, True ) /* Stuck */
     , (490143,   2, False) /* Open */
     , (490143,   3, True ) /* Locked */
     , (490143,  11, False) /* IgnoreCollisions */
     , (490143,  12, True ) /* ReportCollisions */
     , (490143,  13, False) /* Ethereal */
     , (490143,  14, False) /* GravityStatus */
	 , (490143,  19, True ) /* Attackable */
     , (490143,  24, True ) /* UiHidden */
     , (490143,  33, False) /* ResetMessagePending */
     , (490143,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490143,  11,     300) /* ResetInterval */
     , (490143,  39,       1) /* DefaultScale */
     , (490143,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490143,   1, 'Outpost Tent6') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490143,   1,   0x02000B67) /* Setup */
     , (490143,   3,  536870947) /* SoundTable */
     , (490143,   8,  100668183) /* Icon */
     , (490143,  22,  872415275) /* PhysicsEffectTable */;

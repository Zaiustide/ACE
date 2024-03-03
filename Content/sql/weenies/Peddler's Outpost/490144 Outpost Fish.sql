DELETE FROM `weenie` WHERE `class_Id` = 490144;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490144, 'Outpost Fish', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490144,   1,        128) /* ItemType - Misc */
     , (490144,   8,        500) /* Mass */
     , (490144,  16,          1) /* ItemUseable - No */
     , (490144,  19,          0) /* Value */
     , (490144,  38,     500000) /* ResistLockpick */
     , (490144,  93,          8) /* PhysicsState - ReportCollisions */;
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490144,   1, True ) /* Stuck */
     , (490144,   2, False) /* Open */
     , (490144,   3, True ) /* Locked */
     , (490144,  11, False) /* IgnoreCollisions */
     , (490144,  12, True ) /* ReportCollisions */
     , (490144,  13, False) /* Ethereal */
     , (490144,  14, False) /* GravityStatus */
	 , (490144,  19, True ) /* Attackable */
     , (490144,  24, True ) /* UiHidden */
     , (490144,  33, False) /* ResetMessagePending */
     , (490144,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490144,  11,     300) /* ResetInterval */
     , (490144,  39,       1.5) /* DefaultScale */
     , (490144,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490144,   1, 'Outpost Fish') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490144,   1,   0x02000A40) /* Setup */
     , (490144,   3,  536870947) /* SoundTable */
     , (490144,   8,  100668183) /* Icon */
     , (490144,  22,  872415275) /* PhysicsEffectTable */;

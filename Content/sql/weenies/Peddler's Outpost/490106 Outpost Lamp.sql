DELETE FROM `weenie` WHERE `class_Id` = 490106;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490106, 'Outpost Lamp', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490106,   1,        128) /* ItemType - Misc */
     , (490106,   8,        500) /* Mass */
     , (490106,  16,          1) /* ItemUseable - No */
     , (490106,  19,          0) /* Value */
     , (490106,  38,     500000) /* ResistLockpick */
     , (490106,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490106,   1, True ) /* Stuck */
     , (490106,   2, False) /* Open */
     , (490106,   3, True ) /* Locked */
     , (490106,  11, False) /* IgnoreCollisions */
     , (490106,  12, True ) /* ReportCollisions */
     , (490106,  13, False) /* Ethereal */
     , (490106,  14, False) /* GravityStatus */
     , (490106,  24, True ) /* UiHidden */
	 , (490106,  19, True ) /* Attackable */
     , (490106,  33, False) /* ResetMessagePending */
     , (490106,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490106,  11,     300) /* ResetInterval */
     , (490106,  39,       1) /* DefaultScale */
     , (490106,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490106,   1, 'Outpost Lamp') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490106,   1,   0x02001239) /* Setup */
     , (490106,   3,  536870947) /* SoundTable */
     , (490106,   8,  100668183) /* Icon */
     , (490106,  22,  872415275) /* PhysicsEffectTable */;

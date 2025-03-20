DELETE FROM `weenie` WHERE `class_Id` = 490120;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490120, 'Outpost test2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490120,   1,        128) /* ItemType - Misc */
     , (490120,   8,        500) /* Mass */
     , (490120,  16,          1) /* ItemUseable - No */
     , (490120,  19,          0) /* Value */
     , (490120,  38,     500000) /* ResistLockpick */
     , (490120,  93,          8) /* PhysicsState - ReportCollisions */;
	 
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490120,   1, True ) /* Stuck */
     , (490120,   2, False) /* Open */
     , (490120,   3, True ) /* Locked */
     , (490120,  11, False) /* IgnoreCollisions */
     , (490120,  12, True ) /* ReportCollisions */
     , (490120,  13, False) /* Ethereal */
	 , (490120,  19, True ) /* Attackable */
     , (490120,  14, False) /* GravityStatus */
     , (490120,  24, True ) /* UiHidden */
     , (490120,  33, False) /* ResetMessagePending */
     , (490120,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490120,  11,     300) /* ResetInterval */
     , (490120,  39,       1.3) /* DefaultScale */
     , (490120,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490120,   1, 'Outpost test') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490120,   1,   0x02001B88) /* Setup */
     , (490120,   3,  536870947) /* SoundTable */
     , (490120,   8,  100668183) /* Icon */
     , (490120,  22,  872415275) /* PhysicsEffectTable */;

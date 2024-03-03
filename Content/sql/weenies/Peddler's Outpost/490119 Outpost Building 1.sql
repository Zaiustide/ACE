DELETE FROM `weenie` WHERE `class_Id` = 490119;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490119, 'Outpost test', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490119,   1,        128) /* ItemType - Misc */
     , (490119,   8,        500) /* Mass */
     , (490119,  16,          1) /* ItemUseable - No */
     , (490119,  19,          0) /* Value */
     , (490119,  38,     500000) /* ResistLockpick */
     , (490119,  93,          8) /* PhysicsState - ReportCollisions */;
	 
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490119,   1, True ) /* Stuck */
     , (490119,   2, False) /* Open */
     , (490119,   3, True ) /* Locked */
     , (490119,  11, False) /* IgnoreCollisions */
     , (490119,  12, True ) /* ReportCollisions */
     , (490119,  13, False) /* Ethereal */
	 , (490119,  19, True ) /* Attackable */
     , (490119,  14, False) /* GravityStatus */
     , (490119,  24, True ) /* UiHidden */
     , (490119,  33, False) /* ResetMessagePending */
     , (490119,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490119,  11,     300) /* ResetInterval */
     , (490119,  39,       0.33) /* DefaultScale */
     , (490119,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490119,   1, 'Outpost test') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490119,   1,   0x02001B89) /* Setup */
     , (490119,   3,  536870947) /* SoundTable */
     , (490119,   8,  100668183) /* Icon */
     , (490119,  22,  872415275) /* PhysicsEffectTable */;

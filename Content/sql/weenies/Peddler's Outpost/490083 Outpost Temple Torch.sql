DELETE FROM `weenie` WHERE `class_Id` = 490083;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490083, 'Outposttempletorch', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490083,   1,        128) /* ItemType - Misc */
     , (490083,   8,        500) /* Mass */
     , (490083,  16,          1) /* ItemUseable - No */
     , (490083,  19,          0) /* Value */
     , (490083,  38,     500000) /* ResistLockpick */
     , (490083,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490083,   1, True ) /* Stuck */
     , (490083,   2, False) /* Open */
     , (490083,   3, True ) /* Locked */
     , (490083,  11, False) /* IgnoreCollisions */
     , (490083,  12, True ) /* ReportCollisions */
     , (490083,  13, False) /* Ethereal */
     , (490083,  14, False) /* GravityStatus */
	 , (490083,  19, True ) /* Attackable */
     , (490083,  24, True ) /* UiHidden */
     , (490083,  33, False) /* ResetMessagePending */
     , (490083,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490083,  11,     300) /* ResetInterval */
     , (490083,  39,       1) /* DefaultScale */
     , (490083,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490083,   1, 'Gate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490083,   1,   0x02001A7E) /* Setup */
     , (490083,   3,  536870947) /* SoundTable */
     , (490083,   8,  100668183) /* Icon */
     , (490083,  22,  872415275) /* PhysicsEffectTable */;

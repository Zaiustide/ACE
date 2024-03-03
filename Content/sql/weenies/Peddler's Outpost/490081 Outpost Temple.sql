DELETE FROM `weenie` WHERE `class_Id` = 490081;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490081, 'Outposttemple', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490081,   1,        128) /* ItemType - Misc */
     , (490081,   8,        500) /* Mass */
     , (490081,  16,          1) /* ItemUseable - No */
     , (490081,  19,          0) /* Value */
     , (490081,  38,     500000) /* ResistLockpick */
     , (490081,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490081,   1, True ) /* Stuck */
     , (490081,   2, False) /* Open */
     , (490081,   3, True ) /* Locked */
     , (490081,  11, False) /* IgnoreCollisions */
     , (490081,  12, True ) /* ReportCollisions */
     , (490081,  13, False) /* Ethereal */
     , (490081,  14, False) /* GravityStatus */
	   , (490081,  19, FALSE ) /* Attackable */
     , (490081,  24, True ) /* UiHidden */
     , (490081,  33, False) /* ResetMessagePending */
     , (490081,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490081,  11,     300) /* ResetInterval */
     , (490081,  39,       1.0) /* DefaultScale */
     , (490081,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490081,   1, 'Gate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490081,   1,   0x02001A91) /* Setup */
     , (490081,   3,  536870947) /* SoundTable */
     , (490081,   8,  100668183) /* Icon */
     , (490081,  22,  872415275) /* PhysicsEffectTable */;

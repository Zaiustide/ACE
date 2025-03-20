DELETE FROM `weenie` WHERE `class_Id` = 490139;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490139, 'Outpost Town Statue', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490139,   1,        128) /* ItemType - Misc */
     , (490139,   8,        500) /* Mass */
     , (490139,  16,          1) /* ItemUseable - No */
     , (490139,  19,          0) /* Value */
     , (490139,  38,     500000) /* ResistLockpick */
     , (490139,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490139,   1, True ) /* Stuck */
     , (490139,   2, False) /* Open */
     , (490139,   3, True ) /* Locked */
     , (490139,  11, False) /* IgnoreCollisions */
     , (490139,  12, True ) /* ReportCollisions */
     , (490139,  13, False) /* Ethereal */
     , (490139,  14, False) /* GravityStatus */
	 , (490139,  19, True ) /* Attackable */
     , (490139,  24, True ) /* UiHidden */
     , (490139,  33, False) /* ResetMessagePending */
     , (490139,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490139,  11,     300) /* ResetInterval */
     , (490139,  39,       5) /* DefaultScale */
     , (490139,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490139,   1, 'Outpost Town Statue') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490139,   1,   0x02001235) /* Setup */
     , (490139,   3,  536870947) /* SoundTable */
     , (490139,   8,  100668183) /* Icon */
     , (490139,  22,  872415275) /* PhysicsEffectTable */;

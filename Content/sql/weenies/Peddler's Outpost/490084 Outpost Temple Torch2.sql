DELETE FROM `weenie` WHERE `class_Id` = 490084;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490084, 'Outposttempletorch2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490084,   1,        128) /* ItemType - Misc */
     , (490084,   8,        500) /* Mass */
     , (490084,  16,          1) /* ItemUseable - No */
     , (490084,  19,          0) /* Value */
     , (490084,  38,     500000) /* ResistLockpick */
     , (490084,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490084,   1, True ) /* Stuck */
     , (490084,   2, False) /* Open */
     , (490084,   3, True ) /* Locked */
     , (490084,  11, False) /* IgnoreCollisions */
     , (490084,  12, True ) /* ReportCollisions */
     , (490084,  13, False) /* Ethereal */
     , (490084,  14, False) /* GravityStatus */
     , (490084,  24, True ) /* UiHidden */
     , (490084,  33, False) /* ResetMessagePending */
     , (490084,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490084,  11,     300) /* ResetInterval */
     , (490084,  39,       1) /* DefaultScale */
     , (490084,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490084,   1, 'Gate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490084,   1,   0x02001A7D) /* Setup */
     , (490084,   3,  536870947) /* SoundTable */
     , (490084,   8,  100668183) /* Icon */
     , (490084,  22,  872415275) /* PhysicsEffectTable */;

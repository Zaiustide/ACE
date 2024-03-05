DELETE FROM `weenie` WHERE `class_Id` = 490085;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490085, 'OutposttempleTN', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490085,   1,        128) /* ItemType - Misc */
     , (490085,   8,        500) /* Mass */
     , (490085,  16,          1) /* ItemUseable - No */
     , (490085,  19,          0) /* Value */
     , (490085,  38,     500000) /* ResistLockpick */
     , (490085,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490085,   1, True ) /* Stuck */
     , (490085,   2, False) /* Open */
     , (490085,   3, True ) /* Locked */
     , (490085,  11, False) /* IgnoreCollisions */
     , (490085,  12, True ) /* ReportCollisions */
     , (490085,  13, False) /* Ethereal */
     , (490085,  14, False) /* GravityStatus */
     , (490085,  24, True ) /* UiHidden */
     , (490085,  33, False) /* ResetMessagePending */
     , (490085,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490085,  11,     300) /* ResetInterval */
     , (490085,  39,       1) /* DefaultScale */
     , (490085,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490085,   1, 'Gate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490085,   1,   0x020019E3) /* Setup */
     , (490085,   3,  536870947) /* SoundTable */
     , (490085,   8,  100668183) /* Icon */
     , (490085,  22,  872415275) /* PhysicsEffectTable */;

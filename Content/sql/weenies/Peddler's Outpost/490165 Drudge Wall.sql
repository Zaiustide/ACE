DELETE FROM `weenie` WHERE `class_Id` = 490165;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490165, 'drudgeWalls', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490165,   1,        128) /* ItemType - Misc */
     , (490165,   8,        500) /* Mass */
     , (490165,  16,          1) /* ItemUseable - No */
     , (490165,  19,          0) /* Value */
     , (490165,  38,      50000) /* ResistLockpick */
     , (490165,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490165,   1, True ) /* Stuck */
     , (490165,   2, False) /* Open */
     , (490165,   3, True ) /* Locked */
     , (490165,  11, False) /* IgnoreCollisions */
     , (490165,  12, True ) /* ReportCollisions */
     , (490165,  13, False) /* Ethereal */
     , (490165,  14, False) /* GravityStatus */
     , (490165,  19, True ) /* Attackable */
     , (490165,  24, True ) /* UiHidden */
     , (490165,  33, False) /* ResetMessagePending */
     , (490165,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490165,  11,     300) /* ResetInterval */
     , (490165,  39,      2) /* DefaultScale */
     , (490165,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490165,   1, 'Stone') /* Name */
     , (490165,  14, 'Use this item to open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490165,   1,   33557118) /* Setup */
     , (490165,   2,  150995139) /* MotionTable */
     , (490165,   3,  536870947) /* SoundTable */
     , (490165,   8,  100668183) /* Icon */
     , (490165,  22,  872415275) /* PhysicsEffectTable */;

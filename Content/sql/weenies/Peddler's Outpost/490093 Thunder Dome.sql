DELETE FROM `weenie` WHERE `class_Id` = 490093;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490093, 'ThunderDome', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490093,   1,        128) /* ItemType - Misc */
     , (490093,   8,        500) /* Mass */
     , (490093,  16,          1) /* ItemUseable - No */
     , (490093,  19,          0) /* Value */
     , (490093,  38,     500000) /* ResistLockpick */
     , (490093,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490093,   1, True ) /* Stuck */
     , (490093,   2, False) /* Open */
     , (490093,   3, True ) /* Locked */
     , (490093,  11, False) /* IgnoreCollisions */
     , (490093,  12, True ) /* ReportCollisions */
     , (490093,  13, False) /* Ethereal */
     , (490093,  14, False) /* GravityStatus */
     , (490093,  24, True ) /* UiHidden */
     , (490093,  33, False) /* ResetMessagePending */
     , (490093,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490093,  11,     300) /* ResetInterval */
     , (490093,  39,       1) /* DefaultScale */
     , (490093,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490093,   1, 'Gate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490093,   1,   0x0200187C) /* Setup */
     , (490093,   3,  536870947) /* SoundTable */
     , (490093,   8,  100668183) /* Icon */
     , (490093,  22,  872415275) /* PhysicsEffectTable */;

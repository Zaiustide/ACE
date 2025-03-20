DELETE FROM `weenie` WHERE `class_Id` = 490099;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490099, 'Outpost Pillar', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490099,   1,        128) /* ItemType - Misc */
     , (490099,   8,        500) /* Mass */
     , (490099,  16,          1) /* ItemUseable - No */
     , (490099,  19,          0) /* Value */
     , (490099,  38,     500000) /* ResistLockpick */
     , (490099,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490099,   1, True ) /* Stuck */
     , (490099,   2, False) /* Open */
     , (490099,   3, True ) /* Locked */
     , (490099,  11, False) /* IgnoreCollisions */
     , (490099,  12, True ) /* ReportCollisions */
     , (490099,  13, False) /* Ethereal */
     , (490099,  14, False) /* GravityStatus */
     , (490099,  24, True ) /* UiHidden */
     , (490099,  33, False) /* ResetMessagePending */
     , (490099,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490099,  11,     300) /* ResetInterval */
     , (490099,  39,       1) /* DefaultScale */
     , (490099,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490099,   1, 'Outpost Pillar') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490099,   1,   0x02001A93) /* Setup */
     , (490099,   3,  536870947) /* SoundTable */
     , (490099,   8,  100668183) /* Icon */
     , (490099,  22,  872415275) /* PhysicsEffectTable */;

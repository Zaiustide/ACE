DELETE FROM `weenie` WHERE `class_Id` = 490116;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490116, 'Outpost Small Tree', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490116,   1,        128) /* ItemType - Misc */
     , (490116,   8,        500) /* Mass */
     , (490116,  16,          1) /* ItemUseable - No */
     , (490116,  19,          0) /* Value */
     , (490116,  38,     500000) /* ResistLockpick */
     , (490116,  93,          8) /* PhysicsState - ReportCollisions */;
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490116,   1, True ) /* Stuck */
     , (490116,   2, False) /* Open */
     , (490116,   3, True ) /* Locked */
     , (490116,  11, False) /* IgnoreCollisions */
     , (490116,  12, True ) /* ReportCollisions */
     , (490116,  13, False) /* Ethereal */
     , (490116,  14, False) /* GravityStatus */
     , (490116,  24, True ) /* UiHidden */
     , (490116,  33, False) /* ResetMessagePending */
     , (490116,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490116,  11,     300) /* ResetInterval */
     , (490116,  39,       2) /* DefaultScale */
     , (490116,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490116,   1, 'Outpost Small Tree') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490116,   1,   0x020004BE) /* Setup */
     , (490116,   3,  536870947) /* SoundTable */
     , (490116,   8,  100668183) /* Icon */
     , (490116,  22,  872415275) /* PhysicsEffectTable */;

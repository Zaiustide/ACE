DELETE FROM `weenie` WHERE `class_Id` = 490097;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490097, 'Outpostfire', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490097,   1,        128) /* ItemType - Misc */
     , (490097,   8,        500) /* Mass */
     , (490097,  16,          1) /* ItemUseable - No */
     , (490097,  19,          0) /* Value */
     , (490097,  38,     500000) /* ResistLockpick */
     , (490097,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490097,   1, True ) /* Stuck */
     , (490097,   2, False) /* Open */
     , (490097,   3, True ) /* Locked */
     , (490097,  11, False) /* IgnoreCollisions */
     , (490097,  12, True ) /* ReportCollisions */
     , (490097,  13, False) /* Ethereal */
     , (490097,  14, False) /* GravityStatus */
     , (490097,  24, True ) /* UiHidden */
     , (490097,  33, False) /* ResetMessagePending */
     , (490097,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490097,  11,     300) /* ResetInterval */
     , (490097,  39,      1) /* DefaultScale */
     , (490097,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490097,   1, 'Gate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490097,   1,   0x020006FA) /* Setup */
     , (490097,   3,  0x20000052) /* SoundTable */
     , (490097,   8,  100668183) /* Icon */
     , (490097,  22,  872415275) /* PhysicsEffectTable */;

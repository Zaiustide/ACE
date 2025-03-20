DELETE FROM `weenie` WHERE `class_Id` = 490111;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490111, 'Outpost Tree3', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490111,   1,        128) /* ItemType - Misc */
     , (490111,   8,        500) /* Mass */
     , (490111,  16,          1) /* ItemUseable - No */
     , (490111,  19,          0) /* Value */
     , (490111,  38,     500000) /* ResistLockpick */
     , (490111,  93,          8) /* PhysicsState - ReportCollisions */;
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490111,   1, True ) /* Stuck */
     , (490111,   2, False) /* Open */
     , (490111,   3, True ) /* Locked */
     , (490111,  11, False) /* IgnoreCollisions */
     , (490111,  12, True ) /* ReportCollisions */
     , (490111,  13, False) /* Ethereal */
     , (490111,  14, False) /* GravityStatus */
     , (490111,  24, True ) /* UiHidden */
	 , (490111,  19, True ) /* Attackable */
     , (490111,  33, False) /* ResetMessagePending */
     , (490111,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490111,  11,     300) /* ResetInterval */
     , (490111,  39,       2) /* DefaultScale */
     , (490111,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490111,   1, 'Outpost Tree3') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490111,   1,   0x020007D4) /* Setup */
     , (490111,   3,  536870947) /* SoundTable */
     , (490111,   8,  100668183) /* Icon */
     , (490111,  22,  872415275) /* PhysicsEffectTable */;

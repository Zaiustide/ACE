DELETE FROM `weenie` WHERE `class_Id` = 490112;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490112, 'Outpost Tree3 Med', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490112,   1,        128) /* ItemType - Misc */
     , (490112,   8,        500) /* Mass */
     , (490112,  16,          1) /* ItemUseable - No */
     , (490112,  19,          0) /* Value */
     , (490112,  38,     500000) /* ResistLockpick */
     , (490112,  93,          8) /* PhysicsState - ReportCollisions */;
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490112,   1, True ) /* Stuck */
     , (490112,   2, False) /* Open */
     , (490112,   3, True ) /* Locked */
     , (490112,  11, False) /* IgnoreCollisions */
     , (490112,  12, True ) /* ReportCollisions */
     , (490112,  13, False) /* Ethereal */
     , (490112,  14, False) /* GravityStatus */
     , (490112,  24, True ) /* UiHidden */
	 , (490112,  19, True ) /* Attackable */
     , (490112,  33, False) /* ResetMessagePending */
     , (490112,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490112,  11,     300) /* ResetInterval */
     , (490112,  39,       2) /* DefaultScale */
     , (490112,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490112,   1, 'Outpost Tree3 Med') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490112,   1,   0x020007D4) /* Setup */
     , (490112,   3,  536870947) /* SoundTable */
     , (490112,   8,  100668183) /* Icon */
     , (490112,  22,  872415275) /* PhysicsEffectTable */;

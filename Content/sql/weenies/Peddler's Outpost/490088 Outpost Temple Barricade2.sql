DELETE FROM `weenie` WHERE `class_Id` = 490088;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490088, 'Outpost Temple Barricade2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490088,   1,        128) /* ItemType - Misc */
     , (490088,   8,        500) /* Mass */
     , (490088,  16,          1) /* ItemUseable - No */
     , (490088,  19,          0) /* Value */
     , (490088,  38,     500000) /* ResistLockpick */
     , (490088,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490088,   1, True ) /* Stuck */
     , (490088,   2, False) /* Open */
     , (490088,   3, True ) /* Locked */
     , (490088,  11, False) /* IgnoreCollisions */
     , (490088,  12, True ) /* ReportCollisions */
     , (490088,  13, False) /* Ethereal */
	 , (490088,  19, True ) /* Attackable */
     , (490088,  14, False) /* GravityStatus */
     , (490088,  24, True ) /* UiHidden */
     , (490088,  33, False) /* ResetMessagePending */
     , (490088,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490088,  11,     300) /* ResetInterval */
     , (490088,  39,       1) /* DefaultScale */
     , (490088,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490088,   1, 'Gate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490088,   1,   0x0200193E) /* Setup */
     , (490088,   3,  536870947) /* SoundTable */
     , (490088,   8,  100668183) /* Icon */
     , (490088,  22,  872415275) /* PhysicsEffectTable */;

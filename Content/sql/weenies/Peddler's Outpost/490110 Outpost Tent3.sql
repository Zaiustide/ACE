DELETE FROM `weenie` WHERE `class_Id` = 490110;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490110, 'Outpost Tent3', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490110,   1,        128) /* ItemType - Misc */
     , (490110,   8,        500) /* Mass */
     , (490110,  16,          1) /* ItemUseable - No */
     , (490110,  19,          0) /* Value */
     , (490110,  38,     500000) /* ResistLockpick */
     , (490110,  93,          8) /* PhysicsState - ReportCollisions */;
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490110,   1, True ) /* Stuck */
     , (490110,   2, False) /* Open */
     , (490110,   3, True ) /* Locked */
     , (490110,  11, False) /* IgnoreCollisions */
     , (490110,  12, True ) /* ReportCollisions */
     , (490110,  13, False) /* Ethereal */
     , (490110,  14, False) /* GravityStatus */
	 , (490110,  19, True ) /* Attackable */
     , (490110,  24, True ) /* UiHidden */
     , (490110,  33, False) /* ResetMessagePending */
     , (490110,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490110,  11,     300) /* ResetInterval */
     , (490110,  39,       1) /* DefaultScale */
     , (490110,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490110,   1, 'Outpost Tent3') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490110,   1,   0x02000A51) /* Setup */
     , (490110,   3,  536870947) /* SoundTable */
     , (490110,   8,  100668183) /* Icon */
     , (490110,  22,  872415275) /* PhysicsEffectTable */;

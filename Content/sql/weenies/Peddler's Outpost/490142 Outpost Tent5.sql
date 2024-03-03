DELETE FROM `weenie` WHERE `class_Id` = 490142;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490142, 'Outpost Tent5', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490142,   1,        128) /* ItemType - Misc */
     , (490142,   8,        500) /* Mass */
     , (490142,  16,          1) /* ItemUseable - No */
     , (490142,  19,          0) /* Value */
     , (490142,  38,     500000) /* ResistLockpick */
     , (490142,  93,          8) /* PhysicsState - ReportCollisions */;
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490142,   1, True ) /* Stuck */
     , (490142,   2, False) /* Open */
     , (490142,   3, True ) /* Locked */
     , (490142,  11, False) /* IgnoreCollisions */
     , (490142,  12, True ) /* ReportCollisions */
     , (490142,  13, False) /* Ethereal */
     , (490142,  14, False) /* GravityStatus */
	 , (490142,  19, True ) /* Attackable */
     , (490142,  24, True ) /* UiHidden */
     , (490142,  33, False) /* ResetMessagePending */
     , (490142,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490142,  11,     300) /* ResetInterval */
     , (490142,  39,       1.5) /* DefaultScale */
     , (490142,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490142,   1, 'Outpost Tent5') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490142,   1,   0x02000B68) /* Setup */
     , (490142,   3,  536870947) /* SoundTable */
     , (490142,   8,  100668183) /* Icon */
     , (490142,  22,  872415275) /* PhysicsEffectTable */;

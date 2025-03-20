DELETE FROM `weenie` WHERE `class_Id` = 490145;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490145, 'Outpost Roof', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490145,   1,        128) /* ItemType - Misc */
     , (490145,   8,        500) /* Mass */
     , (490145,  16,          1) /* ItemUseable - No */
     , (490145,  19,          0) /* Value */
     , (490145,  38,     500000) /* ResistLockpick */
     , (490145,  93,          8) /* PhysicsState - ReportCollisions */;
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490145,   1, True ) /* Stuck */
     , (490145,   2, False) /* Open */
     , (490145,   3, True ) /* Locked */
     , (490145,  11, False) /* IgnoreCollisions */
     , (490145,  12, True ) /* ReportCollisions */
     , (490145,  13, False) /* Ethereal */
     , (490145,  14, False) /* GravityStatus */
	 , (490145,  19, True ) /* Attackable */
     , (490145,  24, True ) /* UiHidden */
     , (490145,  33, False) /* ResetMessagePending */
     , (490145,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490145,  11,     300) /* ResetInterval */
     , (490145,  39,       7) /* DefaultScale */
     , (490145,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490145,   1, 'Outpost Roof') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490145,   1,   0x020018C3) /* Setup */
     , (490145,   3,  536870947) /* SoundTable */
     , (490145,   8,  100668183) /* Icon */
     , (490145,  22,  872415275) /* PhysicsEffectTable */;

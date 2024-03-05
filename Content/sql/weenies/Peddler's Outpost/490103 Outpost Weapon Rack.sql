DELETE FROM `weenie` WHERE `class_Id` = 490103;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490103, 'Outpost Weapon Rack', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490103,   1,        128) /* ItemType - Misc */
     , (490103,   8,        500) /* Mass */
     , (490103,  16,          1) /* ItemUseable - No */
     , (490103,  19,          0) /* Value */
     , (490103,  38,     500000) /* ResistLockpick */
     , (490103,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490103,   1, True ) /* Stuck */
     , (490103,   2, False) /* Open */
     , (490103,   3, True ) /* Locked */
     , (490103,  11, False) /* IgnoreCollisions */
     , (490103,  12, True ) /* ReportCollisions */
     , (490103,  13, False) /* Ethereal */
     , (490103,  14, False) /* GravityStatus */
	 , (490103,  19, True ) /* Attackable */
     , (490103,  24, True ) /* UiHidden */
     , (490103,  33, False) /* ResetMessagePending */
     , (490103,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490103,  11,     300) /* ResetInterval */
     , (490103,  39,       1) /* DefaultScale */
     , (490103,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490103,   1, 'Outpost Weapon Rack') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490103,   1,   0x02001287) /* Setup */
     , (490103,   3,  536870947) /* SoundTable */
     , (490103,   8,  100668183) /* Icon */
     , (490103,  22,  872415275) /* PhysicsEffectTable */;

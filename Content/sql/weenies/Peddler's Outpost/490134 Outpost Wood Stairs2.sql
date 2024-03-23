DELETE FROM `weenie` WHERE `class_Id` = 490134;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490134, 'Outpost Wood Stairs2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490134,   1,        128) /* ItemType - Misc */
     , (490134,   8,        500) /* Mass */
     , (490134,  16,          1) /* ItemUseable - No */
     , (490134,  19,          0) /* Value */
     , (490134,  38,     500000) /* ResistLockpick */
     , (490134,  93,          8) /* PhysicsState - ReportCollisions */;
	 
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490134,   1, True ) /* Stuck */
     , (490134,   2, False) /* Open */
     , (490134,   3, True ) /* Locked */
     , (490134,  11, False) /* IgnoreCollisions */
     , (490134,  12, True ) /* ReportCollisions */
     , (490134,  13, False) /* Ethereal */
     , (490134,  14, False) /* GravityStatus */
	 , (490134,  19, True ) /* Attackable */
     , (490134,  24, True ) /* UiHidden */
     , (490134,  33, False) /* ResetMessagePending */
     , (490134,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490134,  11,     300) /* ResetInterval */
     , (490134,  39,       1) /* DefaultScale */
     , (490134,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490134,   1, 'Outpost Wood Stairs2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490134,   1,   0x020002F0) /* Setup */
     , (490134,   3,  536870947) /* SoundTable */
     , (490134,   8,  100668183) /* Icon */
     , (490134,  22,  872415275) /* PhysicsEffectTable */;

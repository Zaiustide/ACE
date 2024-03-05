DELETE FROM `weenie` WHERE `class_Id` = 490121;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490121, 'Outpost test3', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490121,   1,        128) /* ItemType - Misc */
     , (490121,   8,        500) /* Mass */
     , (490121,  16,          1) /* ItemUseable - No */
     , (490121,  19,          0) /* Value */
     , (490121,  38,     500000) /* ResistLockpick */
     , (490121,  93,          8) /* PhysicsState - ReportCollisions */;
	 
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490121,   1, True ) /* Stuck */
     , (490121,   2, False) /* Open */
     , (490121,   3, True ) /* Locked */
     , (490121,  11, False) /* IgnoreCollisions */
     , (490121,  12, True ) /* ReportCollisions */
     , (490121,  13, False) /* Ethereal */
	 , (490121,  19, True ) /* Attackable */
     , (490121,  14, False) /* GravityStatus */
     , (490121,  24, True ) /* UiHidden */
     , (490121,  33, False) /* ResetMessagePending */
     , (490121,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490121,  11,     300) /* ResetInterval */
     , (490121,  39,       0.5) /* DefaultScale */
     , (490121,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490121,   1, 'Outpost test3') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490121,   1,   0x02001B8C) /* Setup */
     , (490121,   3,  536870947) /* SoundTable */
     , (490121,   8,  100668183) /* Icon */
     , (490121,  22,  872415275) /* PhysicsEffectTable */;

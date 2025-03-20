DELETE FROM `weenie` WHERE `class_Id` = 490202;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490202, 'Drudge Cauldron', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490202,   1,        128) /* ItemType - Misc */
     , (490202,   8,        500) /* Mass */
     , (490202,  16,          1) /* ItemUseable - No */
     , (490202,  19,          0) /* Value */
     , (490202,  38,     500000) /* ResistLockpick */
     , (490202,  93,          8) /* PhysicsState - ReportCollisions */;
	 
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490202,   1, True ) /* Stuck */
     , (490202,   2, False) /* Open */
     , (490202,   3, True ) /* Locked */
     , (490202,  11, False) /* IgnoreCollisions */
     , (490202,  12, True ) /* ReportCollisions */
     , (490202,  13, False) /* Ethereal */
     , (490202,  14, False) /* GravityStatus */
	 , (490202,  19, True ) /* Attackable */
     , (490202,  24, True ) /* UiHidden */
     , (490202,  33, False) /* ResetMessagePending */
     , (490202,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490202,  11,     300) /* ResetInterval */
     , (490202,  39,       3) /* DefaultScale */
     , (490202,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490202,   1, 'Drudge Cauldron') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490202,   1,   0x02001766) /* Setup */
     , (490202,   3,  536870947) /* SoundTable */
     , (490202,   8,  100668183) /* Icon */
     , (490202,  22,  872415275) /* PhysicsEffectTable */;

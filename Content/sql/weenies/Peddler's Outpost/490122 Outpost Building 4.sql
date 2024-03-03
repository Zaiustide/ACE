DELETE FROM `weenie` WHERE `class_Id` = 490122;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490122, 'Outpost test4', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490122,   1,        128) /* ItemType - Misc */
     , (490122,   8,        500) /* Mass */
     , (490122,  16,          1) /* ItemUseable - No */
     , (490122,  19,          0) /* Value */
     , (490122,  38,     500000) /* ResistLockpick */
	 , (490122,   9,          0) /* ValidLocations - None */
     , (490122,  93,          1032) /* PhysicsState - ReportCollisions */;
	 
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490122,   1, True ) /* Stuck */
     , (490122,   2, False) /* Open */
     , (490122,   3, True ) /* Locked */
     , (490122,  11, False) /* IgnoreCollisions */
     , (490122,  12, True ) /* ReportCollisions */
     , (490122,  13, False) /* Ethereal */
	 , (490122,  19, True ) /* Attackable */
     , (490122,  14, False) /* GravityStatus */
     , (490122,  24, True ) /* UiHidden */
     , (490122,  33, False) /* ResetMessagePending */
     , (490122,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490122,  11,     300) /* ResetInterval */
     , (490122,  39,       0.33) /* DefaultScale */
     , (490122,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490122,   1, 'Outpost test4') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490122,   1,   0x02001B8B) /* Setup */
     , (490122,   3,  536870947) /* SoundTable */
     , (490122,   8,  100668183) /* Icon */
     , (490122,  22,  872415275) /* PhysicsEffectTable */;

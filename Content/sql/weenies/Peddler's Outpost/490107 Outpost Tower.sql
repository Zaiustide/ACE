DELETE FROM `weenie` WHERE `class_Id` = 490107;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490107, 'Outpost Temple7', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490107,   1,        128) /* ItemType - Misc */
     , (490107,   8,        500) /* Mass */
     , (490107,  16,          1) /* ItemUseable - No */
     , (490107,  19,          0) /* Value */
     , (490107,  38,     500000) /* ResistLockpick */
     , (490107,  93,          8) /* PhysicsState - ReportCollisions */;
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490107,   1, True ) /* Stuck */
     , (490107,   2, False) /* Open */
     , (490107,   3, True ) /* Locked */
     , (490107,  11, False) /* IgnoreCollisions */
     , (490107,  12, True ) /* ReportCollisions */
     , (490107,  13, False) /* Ethereal */
	 , (490107,  19, True ) /* Attackable */
     , (490107,  14, False) /* GravityStatus */
     , (490107,  24, True ) /* UiHidden */
     , (490107,  33, False) /* ResetMessagePending */
     , (490107,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490107,  11,     300) /* ResetInterval */
     , (490107,  39,       1) /* DefaultScale */
     , (490107,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490107,   1, 'Outpost Tower') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490107,   1,   0x02000F75) /* Setup */
     , (490107,   3,  536870947) /* SoundTable */
     , (490107,   8,  100668183) /* Icon */
     , (490107,  22,  872415275) /* PhysicsEffectTable */;

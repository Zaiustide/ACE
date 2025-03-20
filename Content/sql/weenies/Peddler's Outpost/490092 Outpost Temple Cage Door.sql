DELETE FROM `weenie` WHERE `class_Id` = 490092;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490092, 'Outposttemplecagedoor', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490092,   1,        128) /* ItemType - Misc */
     , (490092,   8,        500) /* Mass */
     , (490092,  16,          1) /* ItemUseable - No */
     , (490092,  19,          0) /* Value */
     , (490092,  38,     500000) /* ResistLockpick */
     , (490092,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490092,   1, True ) /* Stuck */
     , (490092,   2, False) /* Open */
     , (490092,   3, True ) /* Locked */
     , (490092,  11, False) /* IgnoreCollisions */
     , (490092,  12, True ) /* ReportCollisions */
     , (490092,  13, False) /* Ethereal */
     , (490092,  14, False) /* GravityStatus */
	 , (490092,  19, True ) /* Attackable */
     , (490092,  24, True ) /* UiHidden */
     , (490092,  33, False) /* ResetMessagePending */
     , (490092,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490092,  11,     300) /* ResetInterval */
     , (490092,  39,       1) /* DefaultScale */
     , (490092,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490092,   1, 'Gate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490092,   1,   0x02001940) /* Setup */
     , (490092,   3,  536870947) /* SoundTable */
     , (490092,   8,  100668183) /* Icon */
     , (490092,  22,  872415275) /* PhysicsEffectTable */;

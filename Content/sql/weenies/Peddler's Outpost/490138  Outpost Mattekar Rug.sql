DELETE FROM `weenie` WHERE `class_Id` = 490138;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490138, 'Outpostmattekarrug', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490138,   1,        128) /* ItemType - Misc */
     , (490138,   8,        500) /* Mass */
     , (490138,  16,          1) /* ItemUseable - No */
     , (490138,  19,          0) /* Value */
     , (490138,  38,     500000) /* ResistLockpick */
     , (490138,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490138,   1, True ) /* Stuck */
     , (490138,   2, False) /* Open */
     , (490138,   3, True ) /* Locked */
     , (490138,  11, False) /* IgnoreCollisions */
     , (490138,  12, True ) /* ReportCollisions */
     , (490138,  13, False) /* Ethereal */
     , (490138,  14, False) /* GravityStatus */
	 , (490138,  19, True ) /* Attackable */
     , (490138,  24, True ) /* UiHidden */
     , (490138,  33, False) /* ResetMessagePending */
     , (490138,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490138,  11,     300) /* ResetInterval */
     , (490138,  39,       2.5) /* DefaultScale */
     , (490138,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490138,   1, 'Mattekar Rug') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490138,   1,   0x02001279) /* Setup */
     , (490138,   3,  536870947) /* SoundTable */
     , (490138,   8,  100668183) /* Icon */
     , (490138,  22,  872415275) /* PhysicsEffectTable */;

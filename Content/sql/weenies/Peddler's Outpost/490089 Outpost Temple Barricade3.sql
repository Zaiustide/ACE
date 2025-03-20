DELETE FROM `weenie` WHERE `class_Id` = 490089;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490089, 'OutposttempleBarricade3', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490089,   1,        128) /* ItemType - Misc */
     , (490089,   8,        500) /* Mass */
     , (490089,  16,          1) /* ItemUseable - No */
     , (490089,  19,          0) /* Value */
     , (490089,  38,     500000) /* ResistLockpick */
     , (490089,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490089,   1, True ) /* Stuck */
     , (490089,   2, False) /* Open */
     , (490089,   3, True ) /* Locked */
     , (490089,  11, False) /* IgnoreCollisions */
     , (490089,  12, True ) /* ReportCollisions */
     , (490089,  13, False) /* Ethereal */
	 , (490089,  19, True ) /* Attackable */
     , (490089,  14, False) /* GravityStatus */
     , (490089,  24, True ) /* UiHidden */
     , (490089,  33, False) /* ResetMessagePending */
     , (490089,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490089,  11,     300) /* ResetInterval */
     , (490089,  39,       1) /* DefaultScale */
     , (490089,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490089,   1, 'Gate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490089,   1,   0x0200193D) /* Setup */
     , (490089,   3,  536870947) /* SoundTable */
     , (490089,   8,  100668183) /* Icon */
     , (490089,  22,  872415275) /* PhysicsEffectTable */;

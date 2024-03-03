DELETE FROM `weenie` WHERE `class_Id` = 490199;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490199, 'Outpost Fireplace', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490199,   1,        128) /* ItemType - Misc */
     , (490199,   8,        500) /* Mass */
     , (490199,  16,          1) /* ItemUseable - No */
     , (490199,  19,          0) /* Value */
     , (490199,  38,     500000) /* ResistLockpick */
     , (490199,  93,          8) /* PhysicsState - ReportCollisions */;
	 
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490199,   1, True ) /* Stuck */
     , (490199,   2, False) /* Open */
     , (490199,   3, True ) /* Locked */
     , (490199,  11, False) /* IgnoreCollisions */
     , (490199,  12, True ) /* ReportCollisions */
     , (490199,  13, False) /* Ethereal */
     , (490199,  14, False) /* GravityStatus */
	 , (490199,  19, True ) /* Attackable */
     , (490199,  24, True ) /* UiHidden */
     , (490199,  33, False) /* ResetMessagePending */
     , (490199,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490199,  11,     300) /* ResetInterval */
     , (490199,  39,       0.60) /* DefaultScale */
     , (490199,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490199,   1, 'Outpost Fireplace') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490199,   1,   0x02001B6E) /* Setup */
     , (490199,   3,  536870947) /* SoundTable */
     , (490199,   8,  100668183) /* Icon */
     , (490199,  22,  872415275) /* PhysicsEffectTable */;

DELETE FROM `weenie` WHERE `class_Id` = 490132;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490132, 'Outpost Large Flower', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490132,   1,        128) /* ItemType - Misc */
     , (490132,   8,        500) /* Mass */
     , (490132,  16,          1) /* ItemUseable - No */
     , (490132,  19,          0) /* Value */
     , (490132,  38,     500000) /* ResistLockpick */
     , (490132,  93,          8) /* PhysicsState - ReportCollisions */;
	 
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490132,   1, True ) /* Stuck */
     , (490132,   2, False) /* Open */
     , (490132,   3, True ) /* Locked */
     , (490132,  11, False) /* IgnoreCollisions */
     , (490132,  12, True ) /* ReportCollisions */
     , (490132,  13, False) /* Ethereal */
	 , (490132,  19, True ) /* Attackable */
     , (490132,  14, False) /* GravityStatus */
     , (490132,  24, True ) /* UiHidden */
     , (490132,  33, False) /* ResetMessagePending */
     , (490132,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490132,  11,     300) /* ResetInterval */
     , (490132,  39,       5) /* DefaultScale */
     , (490132,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490132,   1, 'Large Flower') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490132,   1, 0x02001B72) /* Setup */
     , (490132,   8, 0x0600192F) /* Icon */;

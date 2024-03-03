DELETE FROM `weenie` WHERE `class_Id` = 490102;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490102, 'Outpost Sack of Supplies', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490102,   1,        128) /* ItemType - Misc */
     , (490102,   8,        500) /* Mass */
     , (490102,  16,          1) /* ItemUseable - No */
     , (490102,  19,          0) /* Value */
     , (490102,  38,     500000) /* ResistLockpick */
     , (490102,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490102,   1, True ) /* Stuck */
     , (490102,   2, False) /* Open */
     , (490102,   3, True ) /* Locked */
     , (490102,  11, False) /* IgnoreCollisions */
     , (490102,  12, True ) /* ReportCollisions */
     , (490102,  13, False) /* Ethereal */
     , (490102,  14, False) /* GravityStatus */
	 , (490102,  19, True ) /* Attackable */
     , (490102,  24, True ) /* UiHidden */
     , (490102,  33, False) /* ResetMessagePending */
     , (490102,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490102,  11,     300) /* ResetInterval */
     , (490102,  39,       1) /* DefaultScale */
     , (490102,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490102,   1, 'Outpost Sack of Supplies') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490102,   1,   0x0200128E) /* Setup */
     , (490102,   3,  536870947) /* SoundTable */
     , (490102,   8,  100668183) /* Icon */
     , (490102,  22,  872415275) /* PhysicsEffectTable */;

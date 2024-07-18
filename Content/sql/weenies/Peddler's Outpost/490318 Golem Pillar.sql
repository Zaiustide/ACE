DELETE FROM `weenie` WHERE `class_Id` = 490318;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490318, 'Golem Pillar', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490318,   1,        128) /* ItemType - Misc */
     , (490318,   8,        500) /* Mass */
     , (490318,  16,          1) /* ItemUseable - No */
     , (490318,  19,          0) /* Value */
     , (490318,  38,     500000) /* ResistLockpick */
     , (490318,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490318,   1, True ) /* Stuck */
     , (490318,   2, False) /* Open */
     , (490318,   3, True ) /* Locked */
     , (490318,  11, False) /* IgnoreCollisions */
     , (490318,  12, True ) /* ReportCollisions */
     , (490318,  13, False) /* Ethereal */
	 , (490318,  19, True ) /* Attackable */
     , (490318,  14, False) /* GravityStatus */
     , (490318,  24, True ) /* UiHidden */
     , (490318,  33, False) /* ResetMessagePending */
     , (490318,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490318,  11,     300) /* ResetInterval */
     , (490318,  39,       2) /* DefaultScale */
     , (490318,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490318,   1, 'Golem Pillar') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490318,   1, 0x02000DA5) /* Setup */
     , (490318,   2, 0x090000CB) /* MotionTable */
     , (490318,   3, 0x2000008C) /* SoundTable */
     , (490318,   4, 0x3000001E) /* CombatTable */
     , (490318,   8, 0x060027E3) /* Icon */
     , (490318,  22, 0x3400002A) /* PhysicsEffectTable */;

DELETE FROM `weenie` WHERE `class_Id` = 490201;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490201, 'Drudge Stronghold Flag', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490201,   1,        128) /* ItemType - Misc */
     , (490201,   8,        500) /* Mass */
     , (490201,  16,          1) /* ItemUseable - No */
     , (490201,  19,          0) /* Value */
     , (490201,  38,     500000) /* ResistLockpick */
     , (490201,  93,          8) /* PhysicsState - ReportCollisions */;
	 
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490201,   1, True ) /* Stuck */
     , (490201,   2, False) /* Open */
     , (490201,   3, True ) /* Locked */
     , (490201,  11, False) /* IgnoreCollisions */
     , (490201,  12, True ) /* ReportCollisions */
     , (490201,  13, False) /* Ethereal */
     , (490201,  14, False) /* GravityStatus */
	 , (490201,  19, True ) /* Attackable */
     , (490201,  24, True ) /* UiHidden */
     , (490201,  33, False) /* ResetMessagePending */
     , (490201,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490201,  11,     300) /* ResetInterval */
     , (490201,  39,       5) /* DefaultScale */
     , (490201,  54,       1) /* UseRadius */
;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490201,   1, 'Drudge Stronghold Flag') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490201,   1,   0x02001870) /* Setup */
     , (490201,   3,  536870947) /* SoundTable */
     , (490201,   8,  100668183) /* Icon */
     , (490201,  22,  872415275) /* PhysicsEffectTable */;

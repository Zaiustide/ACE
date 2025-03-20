DELETE FROM `weenie` WHERE `class_Id` = 490364;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490364, 'ace490364-herasvaultkey', 22, '2021-11-01 00:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490364,   1,      16384) /* ItemType - Key */
     , (490364,   5,        500) /* EncumbranceVal */
	 , (490364,   8,          5) /* Mass */
     , (490364,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (490364,  19,          15) /* Value */
	 , (490364,  33,         -1) /* Bonded - Slippery */
     , (490364,  91,          1) /* MaxStructure */
     , (490364,  92,          1) /* Structure */
     , (490364,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490364,  94,        640) /* TargetType - LockableMagicTarget */
	 , (490364, 369,        180) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490364,  22, True ) /* Inscribable */
     , (490364,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490364,  39,       3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490364,   1, 'Hera''s Vault Key') /* Name */
     , (490364,  13, 'heravault') /* KeyCode */
     , (490364,  16, 'A well made key made of Dragon Bone. The key appears to be infused with the blood of the fallen. It glow''s with an unknown type of power.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490364,   1, 0x02000160) /* Setup */
     , (490364,   3, 0x20000014) /* SoundTable */
     , (490364,   8, 0x0600678D) /* Icon */
	 , (490364,  50, 0x06006BB0) /* IconOverlay */
     , (490364,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (490364,  52,  0x06005B0C) /* IconUnderlay */;

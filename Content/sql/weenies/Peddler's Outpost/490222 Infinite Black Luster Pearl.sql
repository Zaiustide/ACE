DELETE FROM `weenie` WHERE `class_Id` = 490222;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490222, 'ace490222-infiniteblacklusterpearl', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490222,   1,       2048) /* ItemType - Gem */
     , (490222,   5,          0) /* EncumbranceVal */
     , (490222,  11,          1) /* MaxStackSize */
     , (490222,  12,          1) /* StackSize */
     , (490222,  13,          0) /* StackUnitEncumbrance */
     , (490222,  15,          0) /* StackUnitValue */
     , (490222,  16,          8) /* ItemUseable - Contained */
     , (490222,  18,          2) /* UiEffects - Poisoned */
     , (490222,  19,          0) /* Value */
     , (490222,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490222,  94,         16) /* TargetType - Creature */
     , (490222, 151,         11) /* HookType - Floor, Wall, Yard */
     , (490222, 280,          666) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490222,  22, True ) /* Inscribable */
     , (490222,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490222, 167,      1) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490222,   1, 'Infinite Black Luster Pearl') /* Name */
     , (490222,  16, 'This gem is eternal. You can use it as often as you like.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490222,   1, 0x02000179) /* Setup */
     , (490222,   3, 0x20000014) /* SoundTable */
     , (490222,   8, 0x0600302C) /* Icon */
     , (490222,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490222,  28,       3800) 
	 , (490222,  52, 0x06005B0C) /* IconUnderlay */;

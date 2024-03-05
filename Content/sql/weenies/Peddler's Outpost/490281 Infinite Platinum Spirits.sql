DELETE FROM `weenie` WHERE `class_Id` = 490281;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490281, 'ace490281-infinitePlatinumSpirit', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490281,   1,         32) /* ItemType - Food */
     , (490281,   5,         75) /* EncumbranceVal */
     , (490281,   8,         75) /* Mass */
     , (490281,  11,         10) /* MaxStackSize */
     , (490281,  12,          1) /* StackSize */
     , (490281,  13,         75) /* StackUnitEncumbrance */
     , (490281,  14,         75) /* StackUnitMass */
     , (490281,  15,     0) /* StackUnitValue */
     , (490281,  16,          8) /* ItemUseable - Contained */
     , (490281,  18,          1) /* UiEffects - Magical */
     , (490281,  19,     0) /* Value */
     , (490281,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490281,  94,         16) /* TargetType - Creature */
     , (490281, 106,        150) /* ItemSpellcraft */
     , (490281, 107,         50) /* ItemCurMana */
     , (490281, 108,         50) /* ItemMaxMana */
     , (490281, 109,        200) /* ItemDifficulty */
     , (490281, 280,          666) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490281,  22, True ) /* Inscribable */
     , (490281,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490281, 167,      1) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490281,   1, 'Infinite Platinum Spirits') /* Name */
     , (490281,  16, 'A stein filled to the brim with an odd silver liquid.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490281,   1, 0x020000E8) /* Setup */
     , (490281,   3, 0x20000014) /* SoundTable */
     , (490281,   8, 0x0600332E) /* Icon */
     , (490281,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490281,  23,         64) /* UseSound - Eat1 */
     , (490281,  28,       3208) /* Spell - Innervate */
	 , (490281,  52, 0x06005B0C) /* IconUnderlay */;




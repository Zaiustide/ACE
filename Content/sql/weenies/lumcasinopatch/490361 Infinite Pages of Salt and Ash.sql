DELETE FROM `weenie` WHERE `class_Id` = 490361;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490361, 'ace490361-infinitepagesofsaltandash', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490361,   1,       2048) /* ItemType - Gem */
     , (490361,   5,          0) /* EncumbranceVal */
     , (490361,  16,          8) /* ItemUseable - Contained */
     , (490361,  18,          2) /* UiEffects - Poisoned */
     , (490361,  19,          25) /* Value */
     , (490361,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490361,  94,         16) /* TargetType - Creature */
     , (490361, 151,         11) /* HookType - Floor, Wall, Yard */
     , (490361, 280,          666) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490361,  22, True ) /* Inscribable */
     , (490361,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490361, 167,      1) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490361,   1, 'Infinite Black Page of Salt and Ash') /* Name */
     , (490361,  14, 'Use this page to infuse your wielded weapon with the Invocation of the Black Book, adding a 10% bonus to its Attack modifier.  This spell stacks with other spells and cantrips.') /* Use */
     , (490361,  15, 'A page of an ancient book with runes that are unintelligible, but still seem to make sense to your eyes...') /* ShortDesc */
     , (490361,  20, 'Black Pages of Salt and Ash') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490361,   1, 0x02000179) /* Setup */
     , (490361,   3, 0x20000014) /* SoundTable */
     , (490361,   6, 0x04000BEF) /* PaletteBase */
     , (490361,   8, 0x060062EE) /* Icon */
     , (490361,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490361,  28,       3869) /* Spell - Invocation of the Black Book */
	 , (490361,  52,  0x06005B0C) /* IconUnderlay */;
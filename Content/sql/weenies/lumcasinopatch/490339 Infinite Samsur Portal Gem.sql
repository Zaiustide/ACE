DELETE FROM `weenie` WHERE `class_Id` = 490339;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490339, 'gemportalsamsurinfinite', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490339,   1,       2048) /* ItemType - Gem */
     , (490339,   3,         82) /* PaletteTemplate - PinkPurple */
     , (490339,   5,         10) /* EncumbranceVal */
     , (490339,   8,         10) /* Mass */
     , (490339,   9,          0) /* ValidLocations - None */
     , (490339,  16,          8) /* ItemUseable - Contained */
     , (490339,  18,          1) /* UiEffects - Magical */
     , (490339,  19,        10) /* Value */
     , (490339,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (490339,  94,         16) /* TargetType - Creature */
	 , (490339,  33,          1) /* Bonded - Normal */
     , (490339, 106,        210) /* ItemSpellcraft */
     , (490339, 107,         50) /* ItemCurMana */
     , (490339, 108,         50) /* ItemMaxMana */
     , (490339, 109,          0) /* ItemDifficulty */
     , (490339, 110,          0) /* ItemAllegianceRankLimit */
     , (490339, 150,        103) /* HookPlacement - Hook */
     , (490339, 151,          2) /* HookType - Wall */
     , (490339, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490339,  17, True ) /* Inelastic */
     , (490339,  69, False) /* IsSellable */
	 , (490339,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490339, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490339,   1, 'Infinite Samsur Portal Gem') /* Name */
     , (490339,  15, 'This portal summoning gem works best if used outside in a relatively flat area.') /* ShortDesc */
     , (490339,  16, 'This portal summoning gem works best if used outside in a relatively flat area.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490339,   1, 0x02000921) /* Setup */
     , (490339,   3, 0x20000014) /* SoundTable */
     , (490339,   6, 0x04000BEF) /* PaletteBase */
     , (490339,   7, 0x1000010B) /* ClothingBase */
     , (490339,   8, 0x06002D2F) /* Icon */
	 , (490339,  52, 0x06005B0C) /* IconUnderlay */
     , (490339,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490339,  28,        157) /* Spell - Summon Primary Portal I */
     , (490339,  31,       8992) /* LinkedPortalOne - Samsur Portal */
     , (490339,  36, 0x0E000016) /* MutateFilter */;

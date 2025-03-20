DELETE FROM `weenie` WHERE `class_Id` = 490346;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490346, 'gemportalfadsahilinfinite', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490346,   1,       2048) /* ItemType - Gem */
     , (490346,   3,         82) /* PaletteTemplate - PinkPurple */
     , (490346,   5,         10) /* EncumbranceVal */
     , (490346,   8,         10) /* Mass */
     , (490346,  16,          8) /* ItemUseable - Contained */
     , (490346,  18,          1) /* UiEffects - Magical */
     , (490346,  19,       10) /* Value */
     , (490346,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (490346,  94,         16) /* TargetType - Creature */
	 , (490346,  33,          1) /* Bonded - Normal */
     , (490346, 106,        210) /* ItemSpellcraft */
     , (490346, 107,         50) /* ItemCurMana */
     , (490346, 108,         50) /* ItemMaxMana */
     , (490346, 109,          0) /* ItemDifficulty */
     , (490346, 110,          0) /* ItemAllegianceRankLimit */
     , (490346, 150,        103) /* HookPlacement - Hook */
     , (490346, 151,          2) /* HookType - Wall */
     , (490346, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490346,  17, True ) /* Inelastic */
     , (490346,  69, False) /* IsSellable */
	 , (490346,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490346, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490346,   1, 'Infinite Fadsahil''s Portal Gem') /* Name */
     , (490346,  15, 'This portal summoning gem works best if used outside in a relatively flat area.') /* ShortDesc */
     , (490346,  16, 'This portal summoning gem works best if used outside in a relatively flat area.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490346,   1, 0x02000921) /* Setup */
     , (490346,   3, 0x20000014) /* SoundTable */
     , (490346,   6, 0x04000BEF) /* PaletteBase */
     , (490346,   7, 0x1000010B) /* ClothingBase */
     , (490346,   8, 0x06002D32) /* Icon */
	 , (490346,  52, 0x06005B0C) /* IconUnderlay */
     , (490346,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490346,  28,        157) /* Spell - Summon Primary Portal I */
     , (490346,  31,       8988) /* LinkedPortalOne - Fadsahil's Portal */
     , (490346,  36, 0x0E000016) /* MutateFilter */;

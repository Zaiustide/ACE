DELETE FROM `weenie` WHERE `class_Id` = 490345;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490345, 'gemportalceldisethinfinite', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490345,   1,       2048) /* ItemType - Gem */
     , (490345,   3,         82) /* PaletteTemplate - PinkPurple */
     , (490345,   5,         10) /* EncumbranceVal */
     , (490345,   8,         10) /* Mass */
     , (490345,  16,          8) /* ItemUseable - Contained */
     , (490345,  18,          1) /* UiEffects - Magical */
     , (490345,  19,       10) /* Value */
     , (490345,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (490345,  94,         16) /* TargetType - Creature */
	 , (490345,  33,          1) /* Bonded - Normal */
     , (490345, 106,        210) /* ItemSpellcraft */
     , (490345, 107,         50) /* ItemCurMana */
     , (490345, 108,         50) /* ItemMaxMana */
     , (490345, 109,          0) /* ItemDifficulty */
     , (490345, 110,          0) /* ItemAllegianceRankLimit */
     , (490345, 150,        103) /* HookPlacement - Hook */
     , (490345, 151,          2) /* HookType - Wall */
     , (490345, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490345,  17, True ) /* Inelastic */
     , (490345,  69, False) /* IsSellable */
	 , (490345,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490345, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490345,   1, 'Infinite Celdiseth''s Portal Gem') /* Name */
     , (490345,  15, 'This portal summoning gem works best if used outside in a relatively flat area.') /* ShortDesc */
     , (490345,  16, 'This portal summoning gem works best if used outside in a relatively flat area.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490345,   1, 0x02000921) /* Setup */
     , (490345,   3, 0x20000014) /* SoundTable */
     , (490345,   6, 0x04000BEF) /* PaletteBase */
     , (490345,   7, 0x1000010B) /* ClothingBase */
     , (490345,   8, 0x06002D31) /* Icon */
	 , (490345,  52, 0x06005B0C) /* IconUnderlay */
     , (490345,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490345,  28,        157) /* Spell - Summon Primary Portal I */
     , (490345,  31,       8987) /* LinkedPortalOne - Celdiseth's Portal */
     , (490345,  36, 0x0E000016) /* MutateFilter */;

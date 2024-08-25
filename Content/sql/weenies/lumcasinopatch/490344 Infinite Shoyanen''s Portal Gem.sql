DELETE FROM `weenie` WHERE `class_Id` = 490344;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490344, 'gemportalshoyaneninfinite', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490344,   1,       2048) /* ItemType - Gem */
     , (490344,   3,         82) /* PaletteTemplate - PinkPurple */
     , (490344,   5,         10) /* EncumbranceVal */
     , (490344,   8,         10) /* Mass */
     , (490344,  16,          8) /* ItemUseable - Contained */
     , (490344,  18,          1) /* UiEffects - Magical */
     , (490344,  19,       10) /* Value */
     , (490344,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (490344,  94,         16) /* TargetType - Creature */
     , (490344, 106,        210) /* ItemSpellcraft */
     , (490344, 107,         50) /* ItemCurMana */
     , (490344, 108,         50) /* ItemMaxMana */
     , (490344, 109,          0) /* ItemDifficulty */
     , (490344, 110,          0) /* ItemAllegianceRankLimit */
     , (490344, 150,        103) /* HookPlacement - Hook */
     , (490344, 151,          2) /* HookType - Wall */
     , (490344, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490344,  17, True ) /* Inelastic */
     , (490344,  69, False) /* IsSellable */
	 , (490344,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490344, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490344,   1, 'Infinite Shoyanen''s Portal Gem') /* Name */
     , (490344,  15, 'This portal summoning gem works best if used outside in a relatively flat area.') /* ShortDesc */
     , (490344,  16, 'This portal summoning gem works best if used outside in a relatively flat area.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490344,   1, 0x02000921) /* Setup */
     , (490344,   3, 0x20000014) /* SoundTable */
     , (490344,   6, 0x04000BEF) /* PaletteBase */
     , (490344,   7, 0x1000010B) /* ClothingBase */
     , (490344,   8, 0x06002D35) /* Icon */
     , (490344,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (490344,  52, 0x06005B0C) /* IconUnderlay */
     , (490344,  28,        157) /* Spell - Summon Primary Portal I */
     , (490344,  31,       8994) /* LinkedPortalOne - Shoyanen's Portal */
     , (490344,  36, 0x0E000016) /* MutateFilter */;

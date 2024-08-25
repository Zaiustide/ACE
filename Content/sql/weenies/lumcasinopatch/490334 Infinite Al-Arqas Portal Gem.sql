DELETE FROM `weenie` WHERE `class_Id` = 490334;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490334, 'gemportalalarqasinfinite', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490334,   1,       2048) /* ItemType - Gem */
     , (490334,   3,         82) /* PaletteTemplate - PinkPurple */
     , (490334,   5,         10) /* EncumbranceVal */
     , (490334,   8,         10) /* Mass */
     , (490334,   9,          0) /* ValidLocations - None */
     , (490334,  16,          8) /* ItemUseable - Contained */
     , (490334,  18,          1) /* UiEffects - Magical */
     , (490334,  19,        10) /* Value */
     , (490334,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (490334,  94,         16) /* TargetType - Creature */
     , (490334, 106,        210) /* ItemSpellcraft */
     , (490334, 107,         50) /* ItemCurMana */
     , (490334, 108,         50) /* ItemMaxMana */
     , (490334, 109,          0) /* ItemDifficulty */
     , (490334, 110,          0) /* ItemAllegianceRankLimit */
     , (490334, 150,        103) /* HookPlacement - Hook */
     , (490334, 151,          2) /* HookType - Wall */
     , (490334, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490334,  17, True ) /* Inelastic */
     , (490334,  69, False) /* IsSellable */
	 , (490334,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490334, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490334,   1, 'Infinite Al-Arqas Portal Gem') /* Name */
     , (490334,  15, 'This portal summoning gem works best if used outside in a relatively flat area.') /* ShortDesc */
     , (490334,  16, 'This portal summoning gem works best if used outside in a relatively flat area.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490334,   1, 0x02000921) /* Setup */
     , (490334,   3, 0x20000014) /* SoundTable */
     , (490334,   6, 0x04000BEF) /* PaletteBase */
     , (490334,   7, 0x1000010B) /* ClothingBase */
     , (490334,   8, 0x06002D2E) /* Icon */
	 , (490334,  52, 0x06005B0C) /* IconUnderlay */
     , (490334,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490334,  28,        157) /* Spell - Summon Primary Portal I */
     , (490334,  31,       8986) /* LinkedPortalOne - Al-Arqas Portal */
     , (490334,  36, 0x0E000016) /* MutateFilter */;

DELETE FROM `weenie` WHERE `class_Id` = 490341;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490341, 'gemportalyanshiinfinite', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490341,   1,       2048) /* ItemType - Gem */
     , (490341,   3,         82) /* PaletteTemplate - PinkPurple */
     , (490341,   5,         10) /* EncumbranceVal */
     , (490341,   8,         10) /* Mass */
     , (490341,   9,          0) /* ValidLocations - None */
     , (490341,  16,          8) /* ItemUseable - Contained */
     , (490341,  18,          1) /* UiEffects - Magical */
     , (490341,  19,        10) /* Value */
     , (490341,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (490341,  94,         16) /* TargetType - Creature */
	 , (490341,  33,          1) /* Bonded - Normal */
     , (490341, 106,        210) /* ItemSpellcraft */
     , (490341, 107,         50) /* ItemCurMana */
     , (490341, 108,         50) /* ItemMaxMana */
     , (490341, 109,          0) /* ItemDifficulty */
     , (490341, 110,          0) /* ItemAllegianceRankLimit */
     , (490341, 150,        103) /* HookPlacement - Hook */
     , (490341, 151,          2) /* HookType - Wall */
     , (490341, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490341,  17, True ) /* Inelastic */
     , (490341,  69, False) /* IsSellable */
	 , (490341,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490341, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490341,   1, 'Infinite Yanshi Portal Gem') /* Name */
     , (490341,  15, 'This portal summoning gem works best if used outside in a relatively flat area.') /* ShortDesc */
     , (490341,  16, 'This portal summoning gem works best if used outside in a relatively flat area.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490341,   1, 0x02000921) /* Setup */
     , (490341,   3, 0x20000014) /* SoundTable */
     , (490341,   6, 0x04000BEF) /* PaletteBase */
     , (490341,   7, 0x1000010B) /* ClothingBase */
     , (490341,   8, 0x06002D2C) /* Icon */
	 , (490341,  52, 0x06005B0C) /* IconUnderlay */
     , (490341,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490341,  28,        157) /* Spell - Summon Primary Portal I */
     , (490341,  31,       8995) /* LinkedPortalOne - Yanshi Portal */
     , (490341,  36, 0x0E000016) /* MutateFilter */;

DELETE FROM `weenie` WHERE `class_Id` = 490336;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490336, 'gemportallytelthorpeinfinite', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490336,   1,       2048) /* ItemType - Gem */
     , (490336,   3,         82) /* PaletteTemplate - PinkPurple */
     , (490336,   5,         10) /* EncumbranceVal */
     , (490336,   8,         10) /* Mass */
     , (490336,   9,          0) /* ValidLocations - None */
     , (490336,  16,          8) /* ItemUseable - Contained */
     , (490336,  18,          1) /* UiEffects - Magical */
     , (490336,  19,        10) /* Value */
     , (490336,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (490336,  94,         16) /* TargetType - Creature */
	 , (490336,  33,          1) /* Bonded - Normal */
     , (490336, 106,        210) /* ItemSpellcraft */
     , (490336, 107,         50) /* ItemCurMana */
     , (490336, 108,         50) /* ItemMaxMana */
     , (490336, 109,          0) /* ItemDifficulty */
     , (490336, 110,          0) /* ItemAllegianceRankLimit */
     , (490336, 150,        103) /* HookPlacement - Hook */
     , (490336, 151,          2) /* HookType - Wall */
     , (490336, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490336,  17, True ) /* Inelastic */
     , (490336,  69, False) /* IsSellable */
	 , (490336,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490336, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490336,   1, 'Infinite Lytelthorpe Portal Gem') /* Name */
     , (490336,  15, 'This portal summoning gem works best if used outside in a relatively flat area.') /* ShortDesc */
     , (490336,  16, 'This portal summoning gem works best if used outside in a relatively flat area.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490336,   1, 0x02000921) /* Setup */
     , (490336,   3, 0x20000014) /* SoundTable */
     , (490336,   6, 0x04000BEF) /* PaletteBase */
     , (490336,   7, 0x1000010B) /* ClothingBase */
     , (490336,   8, 0x06002D2B) /* Icon */
     , (490336,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (490336,  52, 0x06005B0C) /* IconUnderlay */
     , (490336,  28,        157) /* Spell - Summon Primary Portal I */
     , (490336,  31,       8998) /* LinkedPortalOne - Lytelthorpe Portal */
     , (490336,  36, 0x0E000016) /* MutateFilter */;

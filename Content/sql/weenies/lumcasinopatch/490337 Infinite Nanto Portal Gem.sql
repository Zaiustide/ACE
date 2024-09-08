DELETE FROM `weenie` WHERE `class_Id` = 490337;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490337, 'gemportalnantoinfinite', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490337,   1,       2048) /* ItemType - Gem */
     , (490337,   3,         82) /* PaletteTemplate - PinkPurple */
     , (490337,   5,         10) /* EncumbranceVal */
     , (490337,   8,         10) /* Mass */
     , (490337,   9,          0) /* ValidLocations - None */
     , (490337,  16,          8) /* ItemUseable - Contained */
     , (490337,  18,          1) /* UiEffects - Magical */
     , (490337,  19,        10) /* Value */
     , (490337,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (490337,  94,         16) /* TargetType - Creature */
	 , (490337,  33,          1) /* Bonded - Normal */
     , (490337, 106,        210) /* ItemSpellcraft */
     , (490337, 107,         50) /* ItemCurMana */
     , (490337, 108,         50) /* ItemMaxMana */
     , (490337, 109,          0) /* ItemDifficulty */
     , (490337, 110,          0) /* ItemAllegianceRankLimit */
     , (490337, 150,        103) /* HookPlacement - Hook */
     , (490337, 151,          2) /* HookType - Wall */
     , (490337, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490337,  17, True ) /* Inelastic */
     , (490337,  69, False) /* IsSellable */
	 , (490337,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490337, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490337,   1, 'Infinite Nanto Portal Gem') /* Name */
     , (490337,  15, 'This portal summoning gem works best if used outside in a relatively flat area.') /* ShortDesc */
     , (490337,  16, 'This portal summoning gem works best if used outside in a relatively flat area.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490337,   1, 0x02000921) /* Setup */
     , (490337,   3, 0x20000014) /* SoundTable */
     , (490337,   6, 0x04000BEF) /* PaletteBase */
     , (490337,   7, 0x1000010B) /* ClothingBase */
     , (490337,   8, 0x06002D30) /* Icon */
	 , (490337,  52, 0x06005B0C) /* IconUnderlay */
     , (490337,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490337,  28,        157) /* Spell - Summon Primary Portal I */
     , (490337,  31,       8990) /* LinkedPortalOne - Nanto Portal */
     , (490337,  36, 0x0E000016) /* MutateFilter */;

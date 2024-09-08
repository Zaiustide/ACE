DELETE FROM `weenie` WHERE `class_Id` = 490338;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490338, 'gemportalrithwicinfinite', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490338,   1,       2048) /* ItemType - Gem */
     , (490338,   3,         82) /* PaletteTemplate - PinkPurple */
     , (490338,   5,         10) /* EncumbranceVal */
     , (490338,   8,         10) /* Mass */
     , (490338,   9,          0) /* ValidLocations - None */
     , (490338,  16,          8) /* ItemUseable - Contained */
     , (490338,  18,          1) /* UiEffects - Magical */
     , (490338,  19,        10) /* Value */
     , (490338,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (490338,  94,         16) /* TargetType - Creature */
     , (490338, 106,        210) /* ItemSpellcraft */
	 , (490338,  33,          1) /* Bonded - Normal */
     , (490338, 107,         50) /* ItemCurMana */
     , (490338, 108,         50) /* ItemMaxMana */
     , (490338, 109,          0) /* ItemDifficulty */
     , (490338, 110,          0) /* ItemAllegianceRankLimit */
     , (490338, 150,        103) /* HookPlacement - Hook */
     , (490338, 151,          2) /* HookType - Wall */
     , (490338, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490338,  17, True ) /* Inelastic */
     , (490338,  69, False) /* IsSellable */
	 , (490338,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490338, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490338,   1, 'Infinite Rithwic Portal Gem') /* Name */
     , (490338,  15, 'This portal summoning gem works best if used outside in a relatively flat area.') /* ShortDesc */
     , (490338,  16, 'This portal summoning gem works best if used outside in a relatively flat area.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490338,   1, 0x02000921) /* Setup */
     , (490338,   3, 0x20000014) /* SoundTable */
     , (490338,   6, 0x04000BEF) /* PaletteBase */
     , (490338,   7, 0x1000010B) /* ClothingBase */
     , (490338,   8, 0x06002D28) /* Icon */
	 , (490338,  52, 0x06005B0C) /* IconUnderlay */
     , (490338,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490338,  28,        157) /* Spell - Summon Primary Portal I */
     , (490338,  31,       8991) /* LinkedPortalOne - Rithwic Portal */
     , (490338,  36, 0x0E000016) /* MutateFilter */;

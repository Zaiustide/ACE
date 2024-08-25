DELETE FROM `weenie` WHERE `class_Id` = 490343;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490343, 'gemportalxarabyduninfinite', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490343,   1,       2048) /* ItemType - Gem */
     , (490343,   3,         77) /* PaletteTemplate - BlueGreen */
     , (490343,   5,         10) /* EncumbranceVal */
     , (490343,   8,         10) /* Mass */
     , (490343,   9,          0) /* ValidLocations - None */
     , (490343,  16,          8) /* ItemUseable - Contained */
     , (490343,  18,          1) /* UiEffects - Magical */
     , (490343,  19,        10) /* Value */
     , (490343,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (490343,  94,         16) /* TargetType - Creature */
     , (490343, 106,        210) /* ItemSpellcraft */
     , (490343, 107,         50) /* ItemCurMana */
     , (490343, 108,         50) /* ItemMaxMana */
     , (490343, 109,          0) /* ItemDifficulty */
     , (490343, 110,          0) /* ItemAllegianceRankLimit */
     , (490343, 150,        103) /* HookPlacement - Hook */
     , (490343, 151,          2) /* HookType - Wall */
     , (490343, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490343,  17, True ) /* Inelastic */
     , (490343,  69, False) /* IsSellable */
	 , (490343,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490343, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490343,   1, 'Infinite Xarabydun Portal Gem') /* Name */
     , (490343,  16, 'This portal summoning gem works best if used outside in a relatively flat area.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490343,   1, 0x02000921) /* Setup */
     , (490343,   3, 0x20000014) /* SoundTable */
     , (490343,   6, 0x04000BEF) /* PaletteBase */
     , (490343,   7, 0x1000010B) /* ClothingBase */
     , (490343,   8, 0x06002D28) /* Icon */
	 , (490343,  52, 0x06005B0C) /* IconUnderlay */
     , (490343,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490343,  28,        157) /* Spell - Summon Primary Portal I */
     , (490343,  31,      28269) /* LinkedPortalOne - Portal to Xarabydun */;

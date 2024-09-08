DELETE FROM `weenie` WHERE `class_Id` = 490342;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490342, 'gemportalyaraqinfinite', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490342,   1,       2048) /* ItemType - Gem */
     , (490342,   3,         82) /* PaletteTemplate - PinkPurple */
     , (490342,   5,         10) /* EncumbranceVal */
     , (490342,   8,         10) /* Mass */
     , (490342,   9,          0) /* ValidLocations - None */
     , (490342,  16,          8) /* ItemUseable - Contained */
     , (490342,  18,          1) /* UiEffects - Magical */
     , (490342,  19,       10) /* Value */
     , (490342,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (490342,  94,         16) /* TargetType - Creature */
	 , (490342,  33,          1) /* Bonded - Normal */
     , (490342, 106,        210) /* ItemSpellcraft */
     , (490342, 107,         50) /* ItemCurMana */
     , (490342, 108,         50) /* ItemMaxMana */
     , (490342, 150,        103) /* HookPlacement - Hook */
     , (490342, 151,          2) /* HookType - Wall */
     , (490342, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490342,  17, True ) /* Inelastic */
     , (490342,  69, False) /* IsSellable */
	 , (490342,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490342, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490342,   1, 'Infinite Yaraq Portal Gem') /* Name */
     , (490342,  16, 'Use this gem to summon a short-lived portal to Yaraq. This gem works best if used outside in a relatively flat area.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490342,   1, 0x02000921) /* Setup */
     , (490342,   3, 0x20000014) /* SoundTable */
     , (490342,   6, 0x04000BEF) /* PaletteBase */
     , (490342,   7, 0x1000010B) /* ClothingBase */
     , (490342,   8, 0x06002D2D) /* Icon */
	 , (490342,  52, 0x06005B0C) /* IconUnderlay */
     , (490342,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490342,  28,        157) /* Spell - Summon Primary Portal I */
     , (490342,  31,       8996) /* LinkedPortalOne - Portal to Yaraq */;

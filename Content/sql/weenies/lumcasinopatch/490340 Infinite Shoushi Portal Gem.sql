DELETE FROM `weenie` WHERE `class_Id` = 490340;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490340, 'gemportalshoushiinfinite', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490340,   1,       2048) /* ItemType - Gem */
     , (490340,   3,         82) /* PaletteTemplate - PinkPurple */
     , (490340,   5,         10) /* EncumbranceVal */
     , (490340,   8,         10) /* Mass */
     , (490340,   9,          0) /* ValidLocations - None */
     , (490340,  16,          8) /* ItemUseable - Contained */
     , (490340,  18,          1) /* UiEffects - Magical */
     , (490340,  19,        10) /* Value */
     , (490340,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (490340,  94,         16) /* TargetType - Creature */
	 , (490340,  33,          1) /* Bonded - Normal */
     , (490340, 106,        210) /* ItemSpellcraft */
     , (490340, 107,         50) /* ItemCurMana */
     , (490340, 108,         50) /* ItemMaxMana */
     , (490340, 150,        103) /* HookPlacement - Hook */
     , (490340, 151,          2) /* HookType - Wall */
     , (490340, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490340,  17, True ) /* Inelastic */
     , (490340,  69, False) /* IsSellable */
	 , (490340,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490340, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490340,   1, 'Infinite Shoushi Portal Gem') /* Name */
     , (490340,  16, 'Use this gem to summon a short-lived portal to Shoushi. This gem works best if used outside in a relatively flat area.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490340,   1, 0x02000921) /* Setup */
     , (490340,   3, 0x20000014) /* SoundTable */
     , (490340,   6, 0x04000BEF) /* PaletteBase */
     , (490340,   7, 0x1000010B) /* ClothingBase */
     , (490340,   8, 0x06002D2A) /* Icon */
	 , (490340,  52, 0x06005B0C) /* IconUnderlay */
     , (490340,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490340,  28,        157) /* Spell - Summon Primary Portal I */
     , (490340,  31,       8993) /* LinkedPortalOne - Portal to Shoushi */;

DELETE FROM `weenie` WHERE `class_Id` = 490335;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490335, 'gemportalholtburginfinite', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490335,   1,       2048) /* ItemType - Gem */
     , (490335,   3,         82) /* PaletteTemplate - PinkPurple */
     , (490335,   5,         10) /* EncumbranceVal */
     , (490335,   8,         10) /* Mass */
     , (490335,   9,          0) /* ValidLocations - None */
     , (490335,  16,          8) /* ItemUseable - Contained */
     , (490335,  18,          1) /* UiEffects - Magical */
     , (490335,  19,        10) /* Value */
     , (490335,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (490335,  94,         16) /* TargetType - Creature */
	 , (490335,  33,          1) /* Bonded - Normal */
     , (490335, 106,        210) /* ItemSpellcraft */
     , (490335, 107,         50) /* ItemCurMana */
     , (490335, 108,         50) /* ItemMaxMana */
     , (490335, 150,        103) /* HookPlacement - Hook */
     , (490335, 151,          2) /* HookType - Wall */
     , (490335, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490335,  17, True ) /* Inelastic */
     , (490335,  69, False) /* IsSellable */
	 , (490335,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490335, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490335,   1, 'Infinite Holtburg Portal Gem') /* Name */
     , (490335,  16, 'Use this gem to summon a short-lived portal to Holtburg. This gem works best if used outside in a relatively flat area.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490335,   1, 0x02000921) /* Setup */
     , (490335,   3, 0x20000014) /* SoundTable */
     , (490335,   6, 0x04000BEF) /* PaletteBase */
     , (490335,   7, 0x1000010B) /* ClothingBase */
     , (490335,   8, 0x06002D29) /* Icon */
	 , (490335,  52, 0x06005B0C) /* IconUnderlay */
     , (490335,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490335,  28,        157) /* Spell - Summon Primary Portal I */
     , (490335,  31,       8989) /* LinkedPortalOne - Portal to Holtburg */;

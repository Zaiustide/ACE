DELETE FROM `weenie` WHERE `class_Id` = 490333;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490333, 'ace490333-townnetworkportalgeminfinite', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490333,   1,       2048) /* ItemType - Gem */
     , (490333,   5,         10) /* EncumbranceVal */
     , (490333,  16,          8) /* ItemUseable - Contained */
     , (490333,  18,          1) /* UiEffects - Magical */
     , (490333,  19,        10) /* Value */
     , (490333,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (490333,  94,         16) /* TargetType - Creature */
     , (490333, 106,        210) /* ItemSpellcraft */
     , (490333, 107,         50) /* ItemCurMana */
     , (490333, 108,         50) /* ItemMaxMana */
	 , (490333,  33,          1) /* Bonded - Normal */
     , (490333, 109,          0) /* ItemDifficulty */
     , (490333, 110,          0) /* ItemAllegianceRankLimit */
     , (490333, 151,          2) /* HookType - Wall */
     , (490333, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490333,  17, True ) /* Inelastic */
     , (490333,  69, False) /* IsSellable */
	 , (490333,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490333, 167,      15) /* CooldownDuration */
	 , (490333,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490333,   1, 'Infinite Town Network Portal Gem') /* Name */
     , (490333,  16, 'Use this gem to summon a short-lived portal to the Town Network. This portal summoning gem works best if used outside in a relatively flat area.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490333,   1, 0x02000921) /* Setup */
     , (490333,   3, 0x20000014) /* SoundTable */
     , (490333,   6, 0x04000BEF) /* PaletteBase */
     , (490333,   8, 0x06002D2A) /* Icon */
     , (490333,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490333,  28,        157) /* Spell - Summon Primary Portal I */
	 , (490333,  52, 0x06005B0C) /* IconUnderlay */
     , (490333,  31,      42852) /* LinkedPortalOne - Portal to Town Network */;

DELETE FROM `weenie` WHERE `class_Id` = 600006;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600006, 'YaraqOutpostportalgem', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600006,   1,       2048) /* ItemType - Gem */
     , (600006,   3,         14) /* PaletteTemplate - Red */
     , (600006,   5,          5) /* EncumbranceVal */
     , (600006,   8,          5) /* Mass */
     , (600006,   9,          0) /* ValidLocations - None */
     , (600006,  16,          8) /* ItemUseable - Contained */
     , (600006,  18,          1) /* UiEffects - Magical */
     , (600006,  19,         20) /* Value */
     , (600006,  33,          1) /* Bonded - Normal */
     , (600006,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (600006,  94,         16) /* TargetType - Creature */
     , (600006, 106,        210) /* ItemSpellcraft */
     , (600006, 107,         70) /* ItemCurMana */
     , (600006, 108,         70) /* ItemMaxMana */
     , (600006, 109,         40) /* ItemDifficulty */
     , (600006, 110,          0) /* ItemAllegianceRankLimit */
	 , (600006, 280,        221) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600006,  15, True ) /* LightsStatus */
     , (600006,  23, True ) /* DestroyOnSell */
	 , (600006,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600006,  76,     0.5) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600006,   1, 'Yaraq Outpost Sending Totem') /* Name */
     , (600006,  14, 'Use the totem to travel to the Yaraq Outpost.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600006,   1, 0x02000957) /* Setup */
     , (600006,   3, 0x20000014) /* SoundTable */
     , (600006,   6, 0x0400007E) /* PaletteBase */
     , (600006,   7, 0x10000253) /* ClothingBase */
     , (600006,   8, 0x06001E2F) /* Icon */
     , (600006,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (600006,  27, 0x10000057) /* UseUserAnimation - Sanctuary */
	 , (600006,  52, 0x060065FB) /* IconUnderlay */;

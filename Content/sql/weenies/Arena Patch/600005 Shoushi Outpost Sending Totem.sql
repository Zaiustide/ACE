DELETE FROM `weenie` WHERE `class_Id` = 600005;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600005, 'ShoushiOutpostportalgem', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600005,   1,       2048) /* ItemType - Gem */
     , (600005,   3,         14) /* PaletteTemplate - Red */
     , (600005,   5,          5) /* EncumbranceVal */
     , (600005,   8,          5) /* Mass */
     , (600005,   9,          0) /* ValidLocations - None */
     , (600005,  16,          8) /* ItemUseable - Contained */
     , (600005,  18,          1) /* UiEffects - Magical */
     , (600005,  19,         20) /* Value */
     , (600005,  33,          1) /* Bonded - Normal */
     , (600005,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (600005,  94,         16) /* TargetType - Creature */
     , (600005, 106,        210) /* ItemSpellcraft */
     , (600005, 107,         70) /* ItemCurMana */
     , (600005, 108,         70) /* ItemMaxMana */
     , (600005, 109,         40) /* ItemDifficulty */
     , (600005, 110,          0) /* ItemAllegianceRankLimit */
	 , (600005, 280,        221) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600005,  15, True ) /* LightsStatus */
     , (600005,  23, True ) /* DestroyOnSell */
	 , (600005,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600005,  76,     0.5) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600005,   1, 'Shoushi Outpost Sending Totem') /* Name */
     , (600005,  14, 'Use the totem to travel to the Shoushi Outpost.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600005,   1, 0x02000958) /* Setup */
     , (600005,   3, 0x20000014) /* SoundTable */
     , (600005,   6, 0x0400007E) /* PaletteBase */
     , (600005,   7, 0x10000254) /* ClothingBase */
     , (600005,   8, 0x06001E30) /* Icon */
     , (600005,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (600005,  27, 0x10000057) /* UseUserAnimation - Sanctuary */
	 , (600005,  52, 0x060065FB) /* IconUnderlay */;


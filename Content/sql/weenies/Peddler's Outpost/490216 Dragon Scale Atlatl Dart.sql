DELETE FROM `weenie` WHERE `class_Id` = 490216;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490216, 'ace490216-dragonscaleatlatldart', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490216,   1,        256) /* ItemType - MissileWeapon */
     , (490216,   3,         20) /* PaletteTemplate - Silver */
     , (490216,   5,          1) /* EncumbranceVal */
     , (490216,   8,          2) /* Mass */
     , (490216,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (490216,  11,       5000) /* MaxStackSize */
     , (490216,  12,          1) /* StackSize */
     , (490216,  13,          1) /* StackUnitEncumbrance */
     , (490216,  14,          2) /* StackUnitMass */
     , (490216,  15,        2) /* StackUnitValue */
     , (490216,  16,          1) /* ItemUseable - No */
     , (490216,  18,          1) /* UiEffects - Magical */
     , (490216,  19,        2) /* Value */
     , (490216,  44,         52) /* Damage */
     , (490216,  45,  268435456) /* DamageType - Base */
     , (490216,  50,          4) /* AmmoType - Atlatl */
     , (490216,  51,          3) /* CombatUse - Ammo */
     , (490216,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (490216, 150,        103) /* HookPlacement - Hook */
	 , (490216, 158,          2) /* WieldRequirements - RawSkill */
     , (490216, 159,         47) 
     , (490216, 160,        250) /* WieldDifficulty */
     , (490216, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490216,  17, True ) /* Inelastic */
     , (490216,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490216,  21,       0) /* WeaponLength */
     , (490216,  22,     0.3) /* DamageVariance */
     , (490216,  26,       0) /* MaximumVelocity */
     , (490216,  29,       1) /* WeaponDefense */
     , (490216,  62,       1) /* WeaponOffense */
     , (490216,  63,       1) /* DamageMod */
     , (490216,  78,       1) /* Friction */
     , (490216,  79,       0) /* Elasticity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490216,   1, 'Dragon Scale Atlatl Dart') /* Name */
     , (490216,  16, 'Deadly, dragon scale atlatl darts that draw the elemental energies from elementally attuned atlatls to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490216,   1, 0x02001A88) /* Setup */
     , (490216,   3, 0x20000014) /* SoundTable */
     , (490216,   6, 0x04000BEF) /* PaletteBase */
     , (490216,   7, 0x10000352) /* ClothingBase */
     , (490216,   8, 0x06006FCA) /* Icon */
	 , (490216,  52, 0x06005B0C) /* IconUnderlay */
     , (490216,  22, 0x3400002B) /* PhysicsEffectTable */;

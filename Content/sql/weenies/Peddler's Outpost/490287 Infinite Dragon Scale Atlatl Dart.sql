DELETE FROM `weenie` WHERE `class_Id` = 490287;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490287, 'ace490287-infinitedeadlyprismaticdartpk', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490287,   1,        256) /* ItemType - MissileWeapon */
     , (490287,   3,         20) /* PaletteTemplate - Silver */
     , (490287,   5,          1) /* EncumbranceVal */
     , (490287,   8,          2) /* Mass */
     , (490287,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (490287,  11,       1) /* MaxStackSize */
     , (490287,  12,          1) /* StackSize */
     , (490287,  13,          1) /* StackUnitEncumbrance */
     , (490287,  14,          2) /* StackUnitMass */
     , (490287,  15,        2) /* StackUnitValue */
     , (490287,  16,          1) /* ItemUseable - No */
     , (490287,  18,          1) /* UiEffects - Magical */
     , (490287,  19,        2) /* Value */
     , (490287,  44,         52) /* Damage */
     , (490287,  45,  268435456) /* DamageType - Base */
     , (490287,  50,          2) /* AmmoType - Bolt */
     , (490287,  51,          3) /* CombatUse - Ammo */
     , (490287,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (490287, 150,        103) /* HookPlacement - Hook */
	 , (490287, 158,          2) /* WieldRequirements - RawSkill */
     , (490287, 159,         47) 
     , (490287, 160,        250) /* WieldDifficulty */
	 , (490287, 267,     604800) /* Lifespan */
     , (490287, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490287,  17, True ) /* Inelastic */
     , (490287,  69, False) /* IsSellable */
	 , (490287,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490287,  21,       0) /* WeaponLength */
     , (490287,  22,     0.3) /* DamageVariance */
     , (490287,  26,       0) /* MaximumVelocity */
     , (490287,  29,       1) /* WeaponDefense */
     , (490287,  62,       1) /* WeaponOffense */
     , (490287,  63,       1) /* DamageMod */
     , (490287,  78,       1) /* Friction */
     , (490287,  79,       0) /* Elasticity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490287,   1, 'Infinite Dragon Scale Atlatl Dart') /* Name */
     , (490287,  16, 'Deadly, dragon scale atlatl dart that draw the elemental energies from elementally attuned atlatls to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490287,   1, 0x02001A88) /* Setup */
     , (490287,   3, 0x20000014) /* SoundTable */
     , (490287,   6, 0x04000BEF) /* PaletteBase */
     , (490287,   7, 0x10000352) /* ClothingBase */
     , (490287,   8, 0x06006FCA) /* Icon */
	 , (490287,  52, 0x06005B0C) /* IconUnderlay */
     , (490287,  22, 0x3400002B) /* PhysicsEffectTable */;

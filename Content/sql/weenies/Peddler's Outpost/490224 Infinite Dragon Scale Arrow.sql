DELETE FROM `weenie` WHERE `class_Id` = 490224;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490224, 'ace490224-infinitedeadlyprismaticarrowpk', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490224,   1,        256) /* ItemType - MissileWeapon */
     , (490224,   3,         20) /* PaletteTemplate - Silver */
     , (490224,   5,          1) /* EncumbranceVal */
     , (490224,   8,          2) /* Mass */
     , (490224,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (490224,  11,       1) /* MaxStackSize */
     , (490224,  12,          1) /* StackSize */
     , (490224,  13,          1) /* StackUnitEncumbrance */
     , (490224,  14,          2) /* StackUnitMass */
     , (490224,  15,        2) /* StackUnitValue */
     , (490224,  16,          1) /* ItemUseable - No */
     , (490224,  18,          1) /* UiEffects - Magical */
     , (490224,  19,        2) /* Value */
     , (490224,  44,         40) /* Damage */
     , (490224,  45,  268435456) /* DamageType - Base */
     , (490224,  50,          1) /* AmmoType - Arrow */
     , (490224,  51,          3) /* CombatUse - Ammo */
     , (490224,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (490224, 150,        103) /* HookPlacement - Hook */
	 , (490224, 158,          2) /* WieldRequirements - RawSkill */
     , (490224, 159,         47) 
     , (490224, 160,        250) /* WieldDifficulty */
	 , (490224, 267,     604800) /* Lifespan */
     , (490224, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490224,  17, True ) /* Inelastic */
     , (490224,  69, False) /* IsSellable */
	 , (490224,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490224,  21,       0) /* WeaponLength */
     , (490224,  22,     0.3) /* DamageVariance */
     , (490224,  26,       0) /* MaximumVelocity */
     , (490224,  29,       1) /* WeaponDefense */
     , (490224,  62,       1) /* WeaponOffense */
     , (490224,  63,       1) /* DamageMod */
     , (490224,  78,       1) /* Friction */
     , (490224,  79,       0) /* Elasticity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490224,   1, 'Infinite Dragon Scale Arrow') /* Name */
     , (490224,  16, 'Deadly, dragon scale arrow that draw the elemental energies from elementally attuned bows to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490224,   1, 0x02001A87) /* Setup */
     , (490224,   3, 0x20000014) /* SoundTable */
     , (490224,   6, 0x04000BEF) /* PaletteBase */
     , (490224,   7, 0x10000352) /* ClothingBase */
     , (490224,   8, 0x06006FC7) /* Icon */
	 , (490224,  52, 0x06005B0C) /* IconUnderlay */
     , (490224,  22, 0x3400002B) /* PhysicsEffectTable */;

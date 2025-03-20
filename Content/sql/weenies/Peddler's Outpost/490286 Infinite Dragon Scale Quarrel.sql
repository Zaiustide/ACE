DELETE FROM `weenie` WHERE `class_Id` = 490286;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490286, 'ace490286-infinitedeadlyprismaticquarrelpk', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490286,   1,        256) /* ItemType - MissileWeapon */
     , (490286,   3,         20) /* PaletteTemplate - Silver */
     , (490286,   5,          1) /* EncumbranceVal */
     , (490286,   8,          2) /* Mass */
     , (490286,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (490286,  11,       1) /* MaxStackSize */
     , (490286,  12,          1) /* StackSize */
     , (490286,  13,          1) /* StackUnitEncumbrance */
     , (490286,  14,          2) /* StackUnitMass */
     , (490286,  15,        2) /* StackUnitValue */
     , (490286,  16,          1) /* ItemUseable - No */
     , (490286,  18,          1) /* UiEffects - Magical */
     , (490286,  19,        2) /* Value */
     , (490286,  44,         53) /* Damage */
     , (490286,  45,  268435456) /* DamageType - Base */
     , (490286,  50,          2) /* AmmoType - Bolt */
     , (490286,  51,          3) /* CombatUse - Ammo */
     , (490286,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (490286, 150,        103) /* HookPlacement - Hook */
	 , (490286, 158,          2) /* WieldRequirements - RawSkill */
     , (490286, 159,         47) 
     , (490286, 160,        250) /* WieldDifficulty */
	 , (490286, 267,     604800) /* Lifespan */
     , (490286, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490286,  17, True ) /* Inelastic */
     , (490286,  69, False) /* IsSellable */
	 , (490286,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490286,  21,       0) /* WeaponLength */
     , (490286,  22,     0.3) /* DamageVariance */
     , (490286,  26,       0) /* MaximumVelocity */
     , (490286,  29,       1) /* WeaponDefense */
     , (490286,  62,       1) /* WeaponOffense */
     , (490286,  63,       1) /* DamageMod */
     , (490286,  78,       1) /* Friction */
     , (490286,  79,       0) /* Elasticity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490286,   1, 'Infinite Dragon Scale Quarrel') /* Name */
     , (490286,  16, 'Deadly, dragon scale quarrel that draw the elemental energies from elementally attuned bows to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490286,   1, 0x02001A89) /* Setup */
     , (490286,   3, 0x20000014) /* SoundTable */
     , (490286,   6, 0x04000BEF) /* PaletteBase */
     , (490286,   7, 0x10000352) /* ClothingBase */
     , (490286,   8, 0x06006FCD) /* Icon */
	 , (490286,  52, 0x06005B0C) /* IconUnderlay */
     , (490286,  22, 0x3400002B) /* PhysicsEffectTable */;

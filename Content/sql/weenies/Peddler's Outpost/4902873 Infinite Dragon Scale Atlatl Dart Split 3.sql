DELETE FROM `weenie` WHERE `class_Id` = 4902873;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4902873, 'ace4902873-infinitedeadlyprismaticdartpk', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4902873,   1,        256) /* ItemType - MissileWeapon */
     , (4902873,   3,         20) /* PaletteTemplate - Silver */
     , (4902873,   5,          1) /* EncumbranceVal */
     , (4902873,   8,          2) /* Mass */
     , (4902873,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (4902873,  11,       1) /* MaxStackSize */
     , (4902873,  12,          1) /* StackSize */
     , (4902873,  13,          1) /* StackUnitEncumbrance */
     , (4902873,  14,          2) /* StackUnitMass */
     , (4902873,  15,        2) /* StackUnitValue */
     , (4902873,  16,          1) /* ItemUseable - No */
     , (4902873,  18,          1) /* UiEffects - Magical */
     , (4902873,  19,        2) /* Value */
     , (4902873,  44,         52) /* Damage */
     , (4902873,  45,  268435456) /* DamageType - Base */
     , (4902873,  50,          4) /* AmmoType - Bolt */
     , (4902873,  51,          3) /* CombatUse - Ammo */
     , (4902873,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (4902873, 150,        103) /* HookPlacement - Hook */
	 , (4902873, 158,          2) /* WieldRequirements - RawSkill */
     , (4902873, 159,         47) 
     , (4902873, 160,        250) /* WieldDifficulty */
	 , (4902873, 267,     604800) /* Lifespan */
     , (4902873, 151,          2) /* HookType - Wall */
	 , (4902873, 19006,        3) /* SplitArrowCount */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4902873,  17, True ) /* Inelastic */
     , (4902873,  69, False) /* IsSellable */
	 , (4902873,  63, True ) /* UnlimitedUse */
	 , (4902873,  19017, True ) /* SplitArrows */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4902873,  21,       0) /* WeaponLength */
     , (4902873,  22,     0.3) /* DamageVariance */
     , (4902873,  26,       0) /* MaximumVelocity */
     , (4902873,  29,       1) /* WeaponDefense */
     , (4902873,  62,       1) /* WeaponOffense */
     , (4902873,  63,       1) /* DamageMod */
     , (4902873,  78,       1) /* Friction */
     , (4902873,  79,       0) /* Elasticity */
	 , (4902873,  19072,  0.5) /* SplitArrowDamageMultiplier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4902873,   1, 'Volley of Infinite Dragon Scale Atlatl Dart') /* Name */
     , (4902873,  16, 'Deadly volley of 3 dragon scale atlatl darts that draw the elemental energies from elementally attuned atlatls to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4902873,   1, 0x02001A88) /* Setup */
     , (4902873,   3, 0x20000014) /* SoundTable */
     , (4902873,   6, 0x04000BEF) /* PaletteBase */
     , (4902873,   7, 0x10000352) /* ClothingBase */
     , (4902873,   8, 0x06006FCA) /* Icon */
	 , (4902873,  50, 0x06006C36) /* IconOverlay */
	 , (4902873,  52, 0x06005B0C) /* IconUnderlay */
     , (4902873,  22, 0x3400002B) /* PhysicsEffectTable */;

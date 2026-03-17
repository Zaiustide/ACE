DELETE FROM `weenie` WHERE `class_Id` = 4902243;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4902243, 'ace4902243-infinitedeadlyprismaticarrowpk', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4902243,   1,        256) /* ItemType - MissileWeapon */
     , (4902243,   3,         20) /* PaletteTemplate - Silver */
     , (4902243,   5,          1) /* EncumbranceVal */
     , (4902243,   8,          2) /* Mass */
     , (4902243,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (4902243,  11,       1) /* MaxStackSize */
     , (4902243,  12,          1) /* StackSize */
     , (4902243,  13,          1) /* StackUnitEncumbrance */
     , (4902243,  14,          2) /* StackUnitMass */
     , (4902243,  15,        2) /* StackUnitValue */
     , (4902243,  16,          1) /* ItemUseable - No */
     , (4902243,  18,          1) /* UiEffects - Magical */
     , (4902243,  19,        2) /* Value */
     , (4902243,  44,         40) /* Damage */
     , (4902243,  45,  268435456) /* DamageType - Base */
     , (4902243,  50,          1) /* AmmoType - Arrow */
     , (4902243,  51,          3) /* CombatUse - Ammo */
     , (4902243,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (4902243, 150,        103) /* HookPlacement - Hook */
	 , (4902243, 158,          2) /* WieldRequirements - RawSkill */
     , (4902243, 159,         47) 
     , (4902243, 160,        250) /* WieldDifficulty */
	 , (4902243, 267,     604800) /* Lifespan */
     , (4902243, 151,          2) /* HookType - Wall */
	 , (4902243, 19006,        3) /* SplitArrowCount */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4902243,  17, True ) /* Inelastic */
     , (4902243,  69, False) /* IsSellable */
	 , (4902243,  63, True ) /* UnlimitedUse */
	 , (4902243,  19017, True ) /* SplitArrows */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4902243,  21,       0) /* WeaponLength */
     , (4902243,  22,     0.3) /* DamageVariance */
     , (4902243,  26,       0) /* MaximumVelocity */
     , (4902243,  29,       1) /* WeaponDefense */
     , (4902243,  62,       1) /* WeaponOffense */
     , (4902243,  63,       1) /* DamageMod */
     , (4902243,  78,       1) /* Friction */
     , (4902243,  79,       0) /* Elasticity */
	 , (4902243,  19072,  0.5) /* SplitArrowDamageMultiplier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4902243,   1, 'Volley of Infinite Dragon Scale Arrows') /* Name */
     , (4902243,  16, 'Deadly volley of 3 dragon scale arrows that draw the elemental energies from elementally attuned bows to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4902243,   1, 0x02001A87) /* Setup */
     , (4902243,   3, 0x20000014) /* SoundTable */
     , (4902243,   6, 0x04000BEF) /* PaletteBase */
     , (4902243,   7, 0x10000352) /* ClothingBase */
     , (4902243,   8, 0x06006FC7) /* Icon */
	 , (4902243,  50, 0x06006C36) /* IconOverlay */
	 , (4902243,  52, 0x06005B0C) /* IconUnderlay */
     , (4902243,  22, 0x3400002B) /* PhysicsEffectTable */;

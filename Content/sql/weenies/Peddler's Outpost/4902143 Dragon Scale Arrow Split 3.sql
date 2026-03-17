DELETE FROM `weenie` WHERE `class_Id` = 4902143;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4902143, 'ace4902143-deadlyprismaticarrowpk', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4902143,   1,        256) /* ItemType - MissileWeapon */
     , (4902143,   3,         20) /* PaletteTemplate - Silver */
     , (4902143,   5,          1) /* EncumbranceVal */
     , (4902143,   8,          2) /* Mass */
     , (4902143,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (4902143,  11,       5000) /* MaxStackSize */
     , (4902143,  12,          1) /* StackSize */
     , (4902143,  13,          1) /* StackUnitEncumbrance */
     , (4902143,  14,          2) /* StackUnitMass */
     , (4902143,  15,        100) /* StackUnitValue */
     , (4902143,  16,          1) /* ItemUseable - No */
     , (4902143,  18,          1) /* UiEffects - Magical */
     , (4902143,  19,        100) /* Value */
     , (4902143,  44,         40) /* Damage */
     , (4902143,  45,  268435456) /* DamageType - Base */
     , (4902143,  50,          1) /* AmmoType - Arrow */
     , (4902143,  51,          3) /* CombatUse - Ammo */
     , (4902143,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (4902143, 150,        103) /* HookPlacement - Hook */
	 , (4902143, 158,          2) /* WieldRequirements - RawSkill */
     , (4902143, 159,         47) 
     , (4902143, 160,        250) /* WieldDifficulty */
     , (4902143, 151,          2) /* HookType - Wall */
	 , (4902143, 19006,        3) /* SplitArrowCount */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4902143,  17, True ) /* Inelastic */
     , (4902143,  69, False) /* IsSellable */
	 , (4902143,  19017, True ) /* SplitArrows */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4902143,  21,       0) /* WeaponLength */
     , (4902143,  22,     0.3) /* DamageVariance */
     , (4902143,  26,       0) /* MaximumVelocity */
     , (4902143,  29,       1) /* WeaponDefense */
     , (4902143,  62,       1) /* WeaponOffense */
     , (4902143,  63,       1) /* DamageMod */
     , (4902143,  78,       1) /* Friction */
     , (4902143,  79,       0) /* Elasticity */
	 , (4902143,  19072,  0.5) /* SplitArrowDamageMultiplier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4902143,   1, 'Volley of Dragon Scale Arrows') /* Name */
     , (4902143,  16, 'Deadly volley of 3 dragon scale arrows that draw the elemental energies from elementally attuned bows to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4902143,   1, 0x02001A87) /* Setup */
     , (4902143,   3, 0x20000014) /* SoundTable */
     , (4902143,   6, 0x04000BEF) /* PaletteBase */
     , (4902143,   7, 0x10000352) /* ClothingBase */
     , (4902143,   8, 0x06006FC7) /* Icon */
	 , (4902143,  50, 0x06006C36) /* IconOverlay */
	 , (4902143,  52, 0x06005B0C) /* IconUnderlay */
     , (4902143,  22, 0x3400002B) /* PhysicsEffectTable */;

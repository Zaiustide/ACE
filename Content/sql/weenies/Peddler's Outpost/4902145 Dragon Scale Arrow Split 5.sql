DELETE FROM `weenie` WHERE `class_Id` = 4902145;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4902145, 'ace4902145-deadlyprismaticarrowpk', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4902145,   1,        256) /* ItemType - MissileWeapon */
     , (4902145,   3,         20) /* PaletteTemplate - Silver */
     , (4902145,   5,          1) /* EncumbranceVal */
     , (4902145,   8,          2) /* Mass */
     , (4902145,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (4902145,  11,       5000) /* MaxStackSize */
     , (4902145,  12,          1) /* StackSize */
     , (4902145,  13,          1) /* StackUnitEncumbrance */
     , (4902145,  14,          2) /* StackUnitMass */
     , (4902145,  15,        100) /* StackUnitValue */
     , (4902145,  16,          1) /* ItemUseable - No */
     , (4902145,  18,          1) /* UiEffects - Magical */
     , (4902145,  19,        100) /* Value */
     , (4902145,  44,         40) /* Damage */
     , (4902145,  45,  268435456) /* DamageType - Base */
     , (4902145,  50,          1) /* AmmoType - Arrow */
     , (4902145,  51,          3) /* CombatUse - Ammo */
     , (4902145,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (4902145, 150,        103) /* HookPlacement - Hook */
	 , (4902145, 158,          2) /* WieldRequirements - RawSkill */
     , (4902145, 159,         47) 
     , (4902145, 160,        250) /* WieldDifficulty */
     , (4902145, 151,          2) /* HookType - Wall */
	 , (4902145, 19006,        5) /* SplitArrowCount */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4902145,  17, True ) /* Inelastic */
     , (4902145,  69, False) /* IsSellable */
	 , (4902145,  19017, True ) /* SplitArrows */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4902145,  21,       0) /* WeaponLength */
     , (4902145,  22,     0.3) /* DamageVariance */
     , (4902145,  26,       0) /* MaximumVelocity */
     , (4902145,  29,       1) /* WeaponDefense */
     , (4902145,  62,       1) /* WeaponOffense */
     , (4902145,  63,       1) /* DamageMod */
     , (4902145,  78,       1) /* Friction */
     , (4902145,  79,       0) /* Elasticity */
	 , (4902145,  19072,  0.3) /* SplitArrowDamageMultiplier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4902145,   1, 'Volley of Dragon Scale Arrows') /* Name */
     , (4902145,  16, 'Deadly volley of 5 dragon scale arrows that draw the elemental energies from elementally attuned bows to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4902145,   1, 0x02001A87) /* Setup */
     , (4902145,   3, 0x20000014) /* SoundTable */
     , (4902145,   6, 0x04000BEF) /* PaletteBase */
     , (4902145,   7, 0x10000352) /* ClothingBase */
     , (4902145,   8, 0x06006FC7) /* Icon */
	 , (4902145,  50, 0x06006C38) /* IconOverlay */
	 , (4902145,  52, 0x06005B0C) /* IconUnderlay */
     , (4902145,  22, 0x3400002B) /* PhysicsEffectTable */;

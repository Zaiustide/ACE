DELETE FROM `weenie` WHERE `class_Id` = 4902245;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4902245, 'ace4902245-infinitedeadlyprismaticarrowpk', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4902245,   1,        256) /* ItemType - MissileWeapon */
     , (4902245,   3,         20) /* PaletteTemplate - Silver */
     , (4902245,   5,          1) /* EncumbranceVal */
     , (4902245,   8,          2) /* Mass */
     , (4902245,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (4902245,  11,       1) /* MaxStackSize */
     , (4902245,  12,          1) /* StackSize */
     , (4902245,  13,          1) /* StackUnitEncumbrance */
     , (4902245,  14,          2) /* StackUnitMass */
     , (4902245,  15,        2) /* StackUnitValue */
     , (4902245,  16,          1) /* ItemUseable - No */
     , (4902245,  18,          1) /* UiEffects - Magical */
     , (4902245,  19,        2) /* Value */
     , (4902245,  44,         40) /* Damage */
     , (4902245,  45,  268435456) /* DamageType - Base */
     , (4902245,  50,          1) /* AmmoType - Arrow */
     , (4902245,  51,          3) /* CombatUse - Ammo */
     , (4902245,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (4902245, 150,        103) /* HookPlacement - Hook */
	 , (4902245, 158,          2) /* WieldRequirements - RawSkill */
     , (4902245, 159,         47) 
     , (4902245, 160,        250) /* WieldDifficulty */
	 , (4902245, 267,     604800) /* Lifespan */
     , (4902245, 151,          2) /* HookType - Wall */
	 , (4902245, 19006,        5) /* SplitArrowCount */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4902245,  17, True ) /* Inelastic */
     , (4902245,  69, False) /* IsSellable */
	 , (4902245,  63, True ) /* UnlimitedUse */
	 , (4902245,  19017, True ) /* SplitArrows */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4902245,  21,       0) /* WeaponLength */
     , (4902245,  22,     0.3) /* DamageVariance */
     , (4902245,  26,       0) /* MaximumVelocity */
     , (4902245,  29,       1) /* WeaponDefense */
     , (4902245,  62,       1) /* WeaponOffense */
     , (4902245,  63,       1) /* DamageMod */
     , (4902245,  78,       1) /* Friction */
     , (4902245,  79,       0) /* Elasticity */
	 , (4902245,  19072,  0.3) /* SplitArrowDamageMultiplier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4902245,   1, 'Volley of Infinite Dragon Scale Arrows') /* Name */
     , (4902245,  16, 'Deadly volley of 5 dragon scale arrows that draw the elemental energies from elementally attuned bows to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4902245,   1, 0x02001A87) /* Setup */
     , (4902245,   3, 0x20000014) /* SoundTable */
     , (4902245,   6, 0x04000BEF) /* PaletteBase */
     , (4902245,   7, 0x10000352) /* ClothingBase */
     , (4902245,   8, 0x06006FC7) /* Icon */
	 , (4902245,  50, 0x06006C38) /* IconOverlay */
	 , (4902245,  52, 0x06005B0C) /* IconUnderlay */
     , (4902245,  22, 0x3400002B) /* PhysicsEffectTable */;

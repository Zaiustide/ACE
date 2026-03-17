DELETE FROM `weenie` WHERE `class_Id` = 4902875;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4902875, 'ace4902875-infinitedeadlyprismaticdartpk', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4902875,   1,        256) /* ItemType - MissileWeapon */
     , (4902875,   3,         20) /* PaletteTemplate - Silver */
     , (4902875,   5,          1) /* EncumbranceVal */
     , (4902875,   8,          2) /* Mass */
     , (4902875,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (4902875,  11,       1) /* MaxStackSize */
     , (4902875,  12,          1) /* StackSize */
     , (4902875,  13,          1) /* StackUnitEncumbrance */
     , (4902875,  14,          2) /* StackUnitMass */
     , (4902875,  15,        2) /* StackUnitValue */
     , (4902875,  16,          1) /* ItemUseable - No */
     , (4902875,  18,          1) /* UiEffects - Magical */
     , (4902875,  19,        2) /* Value */
     , (4902875,  44,         52) /* Damage */
     , (4902875,  45,  268435456) /* DamageType - Base */
     , (4902875,  50,          4) /* AmmoType - Bolt */
     , (4902875,  51,          3) /* CombatUse - Ammo */
     , (4902875,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (4902875, 150,        103) /* HookPlacement - Hook */
	 , (4902875, 158,          2) /* WieldRequirements - RawSkill */
     , (4902875, 159,         47) 
     , (4902875, 160,        250) /* WieldDifficulty */
	 , (4902875, 267,     604800) /* Lifespan */
     , (4902875, 151,          2) /* HookType - Wall */
	 , (4902875, 19006,        5) /* SplitArrowCount */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4902875,  17, True ) /* Inelastic */
     , (4902875,  69, False) /* IsSellable */
	 , (4902875,  63, True ) /* UnlimitedUse */
	 , (4902875,  19017, True ) /* SplitArrows */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4902875,  21,       0) /* WeaponLength */
     , (4902875,  22,     0.3) /* DamageVariance */
     , (4902875,  26,       0) /* MaximumVelocity */
     , (4902875,  29,       1) /* WeaponDefense */
     , (4902875,  62,       1) /* WeaponOffense */
     , (4902875,  63,       1) /* DamageMod */
     , (4902875,  78,       1) /* Friction */
     , (4902875,  79,       0) /* Elasticity */
	 , (4902875,  19072,  0.3) /* SplitArrowDamageMultiplier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4902875,   1, 'Volley of Infinite Dragon Scale Atlatl Darts') /* Name */
     , (4902875,  16, 'Deadly volley of 5 dragon scale atlatl darts that draw the elemental energies from elementally attuned atlatls to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4902875,   1, 0x02001A88) /* Setup */
     , (4902875,   3, 0x20000014) /* SoundTable */
     , (4902875,   6, 0x04000BEF) /* PaletteBase */
     , (4902875,   7, 0x10000352) /* ClothingBase */
     , (4902875,   8, 0x06006FCA) /* Icon */
	 , (4902875,  50, 0x06006C38) /* IconOverlay */
	 , (4902875,  52, 0x06005B0C) /* IconUnderlay */
     , (4902875,  22, 0x3400002B) /* PhysicsEffectTable */;

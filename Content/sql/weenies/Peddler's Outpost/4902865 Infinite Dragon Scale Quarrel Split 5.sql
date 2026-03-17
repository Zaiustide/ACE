DELETE FROM `weenie` WHERE `class_Id` = 4902865;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4902865, 'ace4902865-infinitedeadlyprismaticquarrelpk', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4902865,   1,        256) /* ItemType - MissileWeapon */
     , (4902865,   3,         20) /* PaletteTemplate - Silver */
     , (4902865,   5,          1) /* EncumbranceVal */
     , (4902865,   8,          2) /* Mass */
     , (4902865,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (4902865,  11,       1) /* MaxStackSize */
     , (4902865,  12,          1) /* StackSize */
     , (4902865,  13,          1) /* StackUnitEncumbrance */
     , (4902865,  14,          2) /* StackUnitMass */
     , (4902865,  15,        2) /* StackUnitValue */
     , (4902865,  16,          1) /* ItemUseable - No */
     , (4902865,  18,          1) /* UiEffects - Magical */
     , (4902865,  19,        2) /* Value */
     , (4902865,  44,         53) /* Damage */
     , (4902865,  45,  268435456) /* DamageType - Base */
     , (4902865,  50,          2) /* AmmoType - Bolt */
     , (4902865,  51,          3) /* CombatUse - Ammo */
     , (4902865,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (4902865, 150,        103) /* HookPlacement - Hook */
	 , (4902865, 158,          2) /* WieldRequirements - RawSkill */
     , (4902865, 159,         47) 
     , (4902865, 160,        250) /* WieldDifficulty */
	 , (4902865, 267,     604800) /* Lifespan */
     , (4902865, 151,          2) /* HookType - Wall */
	 , (4902865, 19006,        5) /* SplitArrowCount */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4902865,  17, True ) /* Inelastic */
     , (4902865,  69, False) /* IsSellable */
	 , (4902865,  63, True ) /* UnlimitedUse */
	 , (4902865,  19017, True ) /* SplitArrows */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4902865,  21,       0) /* WeaponLength */
     , (4902865,  22,     0.3) /* DamageVariance */
     , (4902865,  26,       0) /* MaximumVelocity */
     , (4902865,  29,       1) /* WeaponDefense */
     , (4902865,  62,       1) /* WeaponOffense */
     , (4902865,  63,       1) /* DamageMod */
     , (4902865,  78,       1) /* Friction */
     , (4902865,  79,       0) /* Elasticity */
	 , (4902865,  19072,  0.3) /* SplitArrowDamageMultiplier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4902865,   1, 'Volley of Infinite Dragon Scale Quarrels') /* Name */
     , (4902865,  16, 'Deadly volley of 5 dragon scale quarrels that draw the elemental energies from elementally attuned bows to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4902865,   1, 0x02001A89) /* Setup */
     , (4902865,   3, 0x20000014) /* SoundTable */
     , (4902865,   6, 0x04000BEF) /* PaletteBase */
     , (4902865,   7, 0x10000352) /* ClothingBase */
     , (4902865,   8, 0x06006FCD) /* Icon */
	 , (4902865,  50, 0x06006C38) /* IconOverlay */
	 , (4902865,  52, 0x06005B0C) /* IconUnderlay */
     , (4902865,  22, 0x3400002B) /* PhysicsEffectTable */;

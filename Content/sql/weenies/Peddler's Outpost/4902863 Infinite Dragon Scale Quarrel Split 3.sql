DELETE FROM `weenie` WHERE `class_Id` = 4902863;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4902863, 'ace4902863-infinitedeadlyprismaticquarrelpk', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4902863,   1,        256) /* ItemType - MissileWeapon */
     , (4902863,   3,         20) /* PaletteTemplate - Silver */
     , (4902863,   5,          1) /* EncumbranceVal */
     , (4902863,   8,          2) /* Mass */
     , (4902863,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (4902863,  11,       1) /* MaxStackSize */
     , (4902863,  12,          1) /* StackSize */
     , (4902863,  13,          1) /* StackUnitEncumbrance */
     , (4902863,  14,          2) /* StackUnitMass */
     , (4902863,  15,        2) /* StackUnitValue */
     , (4902863,  16,          1) /* ItemUseable - No */
     , (4902863,  18,          1) /* UiEffects - Magical */
     , (4902863,  19,        2) /* Value */
     , (4902863,  44,         53) /* Damage */
     , (4902863,  45,  268435456) /* DamageType - Base */
     , (4902863,  50,          2) /* AmmoType - Bolt */
     , (4902863,  51,          3) /* CombatUse - Ammo */
     , (4902863,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (4902863, 150,        103) /* HookPlacement - Hook */
	 , (4902863, 158,          2) /* WieldRequirements - RawSkill */
     , (4902863, 159,         47) 
     , (4902863, 160,        250) /* WieldDifficulty */
	 , (4902863, 267,     604800) /* Lifespan */
     , (4902863, 151,          2) /* HookType - Wall */
	 , (4902863, 19006,        3) /* SplitArrowCount */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4902863,  17, True ) /* Inelastic */
     , (4902863,  69, False) /* IsSellable */
	 , (4902863,  63, True ) /* UnlimitedUse */
	 , (4902863,  19017, True ) /* SplitArrows */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4902863,  21,       0) /* WeaponLength */
     , (4902863,  22,     0.3) /* DamageVariance */
     , (4902863,  26,       0) /* MaximumVelocity */
     , (4902863,  29,       1) /* WeaponDefense */
     , (4902863,  62,       1) /* WeaponOffense */
     , (4902863,  63,       1) /* DamageMod */
     , (4902863,  78,       1) /* Friction */
     , (4902863,  79,       0) /* Elasticity */
	 , (4902863,  19072,  0.5) /* SplitArrowDamageMultiplier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4902863,   1, 'Volley of Infinite Dragon Scale Quarrels') /* Name */
     , (4902863,  16, 'Deadly volley of 3 dragon scale quarrels that draw the elemental energies from elementally attuned bows to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4902863,   1, 0x02001A89) /* Setup */
     , (4902863,   3, 0x20000014) /* SoundTable */
     , (4902863,   6, 0x04000BEF) /* PaletteBase */
     , (4902863,   7, 0x10000352) /* ClothingBase */
     , (4902863,   8, 0x06006FCD) /* Icon */
	 , (4902863,  50, 0x06006C36) /* IconOverlay */
	 , (4902863,  52, 0x06005B0C) /* IconUnderlay */
     , (4902863,  22, 0x3400002B) /* PhysicsEffectTable */;

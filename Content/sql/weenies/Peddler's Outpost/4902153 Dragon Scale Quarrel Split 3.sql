DELETE FROM `weenie` WHERE `class_Id` = 4902153;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4902153, 'ace4902153-dragonscalequarrel', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4902153,   1,        256) /* ItemType - MissileWeapon */
     , (4902153,   3,         20) /* PaletteTemplate - Silver */
     , (4902153,   5,          1) /* EncumbranceVal */
     , (4902153,   8,          2) /* Mass */
     , (4902153,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (4902153,  11,       5000) /* MaxStackSize */
     , (4902153,  12,          1) /* StackSize */
     , (4902153,  13,          1) /* StackUnitEncumbrance */
     , (4902153,  14,          2) /* StackUnitMass */
     , (4902153,  15,        100) /* StackUnitValue */
     , (4902153,  16,          1) /* ItemUseable - No */
     , (4902153,  18,          1) /* UiEffects - Magical */
     , (4902153,  19,        100) /* Value */
     , (4902153,  44,         53) /* Damage */
     , (4902153,  45,  268435456) /* DamageType - Base */
     , (4902153,  50,          2) /* AmmoType - Bolt */
     , (4902153,  51,          3) /* CombatUse - Ammo */
     , (4902153,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (4902153, 150,        103) /* HookPlacement - Hook */
	 , (4902153, 158,          2) /* WieldRequirements - RawSkill */
     , (4902153, 159,         47) 
     , (4902153, 160,        250) /* WieldDifficulty */
     , (4902153, 151,          2) /* HookType - Wall */
     , (4902153, 386,          0) /* Overpower */
	 , (4902153, 19006,        3) /* SplitArrowCount */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4902153,  17, True ) /* Inelastic */
     , (4902153,  69, False) /* IsSellable */
	 , (4902153,  19017, True ) /* SplitArrows */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4902153,  21,       0) /* WeaponLength */
     , (4902153,  22,     0.4) /* DamageVariance */
     , (4902153,  26,       0) /* MaximumVelocity */
     , (4902153,  29,       1) /* WeaponDefense */
     , (4902153,  62,       1) /* WeaponOffense */
     , (4902153,  63,       1) /* DamageMod */
     , (4902153,  78,       1) /* Friction */
     , (4902153,  79,       0) /* Elasticity */
	 , (4902153,  19072,  0.5) /* SplitArrowDamageMultiplier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4902153,   1, 'Volley of Dragon Scale Quarrels') /* Name */
     , (4902153,  16, 'Deadly volley of 3 dragon scale quarrels that draw the elemental energies from elementally attuned crossbows to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4902153,   1, 0x02001A89) /* Setup */
     , (4902153,   3, 0x20000014) /* SoundTable */
     , (4902153,   6, 0x04000BEF) /* PaletteBase */
     , (4902153,   7, 0x10000352) /* ClothingBase */
     , (4902153,   8, 0x06006FCD) /* Icon */
	 , (4902153,  50, 0x06006C36) /* IconOverlay */
	 , (4902153,  52, 0x06005B0C) /* IconUnderlay */
     , (4902153,  22, 0x3400002B) /* PhysicsEffectTable */;

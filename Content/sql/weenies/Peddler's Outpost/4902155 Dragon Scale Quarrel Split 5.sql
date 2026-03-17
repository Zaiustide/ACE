DELETE FROM `weenie` WHERE `class_Id` = 4902155;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4902155, 'ace4902155-dragonscalequarrel', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4902155,   1,        256) /* ItemType - MissileWeapon */
     , (4902155,   3,         20) /* PaletteTemplate - Silver */
     , (4902155,   5,          1) /* EncumbranceVal */
     , (4902155,   8,          2) /* Mass */
     , (4902155,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (4902155,  11,       5000) /* MaxStackSize */
     , (4902155,  12,          1) /* StackSize */
     , (4902155,  13,          1) /* StackUnitEncumbrance */
     , (4902155,  14,          2) /* StackUnitMass */
     , (4902155,  15,        100) /* StackUnitValue */
     , (4902155,  16,          1) /* ItemUseable - No */
     , (4902155,  18,          1) /* UiEffects - Magical */
     , (4902155,  19,        100) /* Value */
     , (4902155,  44,         53) /* Damage */
     , (4902155,  45,  268435456) /* DamageType - Base */
     , (4902155,  50,          2) /* AmmoType - Bolt */
     , (4902155,  51,          3) /* CombatUse - Ammo */
     , (4902155,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (4902155, 150,        103) /* HookPlacement - Hook */
	 , (4902155, 158,          2) /* WieldRequirements - RawSkill */
     , (4902155, 159,         47) 
     , (4902155, 160,        250) /* WieldDifficulty */
     , (4902155, 151,          2) /* HookType - Wall */
     , (4902155, 386,          0) /* Overpower */
	 , (4902155, 19006,        5) /* SplitArrowCount */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4902155,  17, True ) /* Inelastic */
     , (4902155,  69, False) /* IsSellable */
	 , (4902155,  19017, True ) /* SplitArrows */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4902155,  21,       0) /* WeaponLength */
     , (4902155,  22,     0.4) /* DamageVariance */
     , (4902155,  26,       0) /* MaximumVelocity */
     , (4902155,  29,       1) /* WeaponDefense */
     , (4902155,  62,       1) /* WeaponOffense */
     , (4902155,  63,       1) /* DamageMod */
     , (4902155,  78,       1) /* Friction */
     , (4902155,  79,       0) /* Elasticity */
	 , (4902155,  19072,  0.3) /* SplitArrowDamageMultiplier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4902155,   1, 'Volley of Dragon Scale Quarrels') /* Name */
     , (4902155,  16, 'Deadly volley of 5 dragon scale quarrels that draw the elemental energies from elementally attuned crossbows to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4902155,   1, 0x02001A89) /* Setup */
     , (4902155,   3, 0x20000014) /* SoundTable */
     , (4902155,   6, 0x04000BEF) /* PaletteBase */
     , (4902155,   7, 0x10000352) /* ClothingBase */
     , (4902155,   8, 0x06006FCD) /* Icon */
	 , (4902155,  50, 0x06006C38) /* IconOverlay */
	 , (4902155,  52, 0x06005B0C) /* IconUnderlay */
     , (4902155,  22, 0x3400002B) /* PhysicsEffectTable */;

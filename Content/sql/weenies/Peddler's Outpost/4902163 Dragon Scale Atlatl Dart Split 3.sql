DELETE FROM `weenie` WHERE `class_Id` = 4902163;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4902163, 'ace4902163-dragonscaleatlatldart', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4902163,   1,        256) /* ItemType - MissileWeapon */
     , (4902163,   3,         20) /* PaletteTemplate - Silver */
     , (4902163,   5,          1) /* EncumbranceVal */
     , (4902163,   8,          2) /* Mass */
     , (4902163,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (4902163,  11,       5000) /* MaxStackSize */
     , (4902163,  12,          1) /* StackSize */
     , (4902163,  13,          1) /* StackUnitEncumbrance */
     , (4902163,  14,          2) /* StackUnitMass */
     , (4902163,  15,        2) /* StackUnitValue */
     , (4902163,  16,          1) /* ItemUseable - No */
     , (4902163,  18,          1) /* UiEffects - Magical */
     , (4902163,  19,        2) /* Value */
     , (4902163,  44,         52) /* Damage */
     , (4902163,  45,  268435456) /* DamageType - Base */
     , (4902163,  50,          4) /* AmmoType - Atlatl */
     , (4902163,  51,          3) /* CombatUse - Ammo */
     , (4902163,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (4902163, 150,        103) /* HookPlacement - Hook */
	 , (4902163, 158,          2) /* WieldRequirements - RawSkill */
     , (4902163, 159,         47) 
     , (4902163, 160,        250) /* WieldDifficulty */
     , (4902163, 151,          2) /* HookType - Wall */
	 , (4902163, 19006,        3) /* SplitArrowCount */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4902163,  17, True ) /* Inelastic */
     , (4902163,  69, False) /* IsSellable */
	 , (4902163,  19017, True ) /* SplitArrows */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4902163,  21,       0) /* WeaponLength */
     , (4902163,  22,     0.3) /* DamageVariance */
     , (4902163,  26,       0) /* MaximumVelocity */
     , (4902163,  29,       1) /* WeaponDefense */
     , (4902163,  62,       1) /* WeaponOffense */
     , (4902163,  63,       1) /* DamageMod */
     , (4902163,  78,       1) /* Friction */
     , (4902163,  79,       0) /* Elasticity */
	 , (4902163,  19072,  0.5) /* SplitArrowDamageMultiplier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4902163,   1, 'Volley of Dragon Scale Atlatl Darts') /* Name */
     , (4902163,  16, 'Deadly volley of 3 dragon scale atlatl darts that draw the elemental energies from elementally attuned atlatls to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4902163,   1, 0x02001A88) /* Setup */
     , (4902163,   3, 0x20000014) /* SoundTable */
     , (4902163,   6, 0x04000BEF) /* PaletteBase */
     , (4902163,   7, 0x10000352) /* ClothingBase */
     , (4902163,   8, 0x06006FCA) /* Icon */
	 , (4902163,  50, 0x06006C36) /* IconOverlay */
	 , (4902163,  52, 0x06005B0C) /* IconUnderlay */
     , (4902163,  22, 0x3400002B) /* PhysicsEffectTable */;

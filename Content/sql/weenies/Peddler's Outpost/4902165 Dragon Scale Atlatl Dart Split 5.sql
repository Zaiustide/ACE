DELETE FROM `weenie` WHERE `class_Id` = 4902165;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4902165, 'ace4902165-dragonscaleatlatldart', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4902165,   1,        256) /* ItemType - MissileWeapon */
     , (4902165,   3,         20) /* PaletteTemplate - Silver */
     , (4902165,   5,          1) /* EncumbranceVal */
     , (4902165,   8,          2) /* Mass */
     , (4902165,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (4902165,  11,       5000) /* MaxStackSize */
     , (4902165,  12,          1) /* StackSize */
     , (4902165,  13,          1) /* StackUnitEncumbrance */
     , (4902165,  14,          2) /* StackUnitMass */
     , (4902165,  15,        2) /* StackUnitValue */
     , (4902165,  16,          1) /* ItemUseable - No */
     , (4902165,  18,          1) /* UiEffects - Magical */
     , (4902165,  19,        2) /* Value */
     , (4902165,  44,         52) /* Damage */
     , (4902165,  45,  268435456) /* DamageType - Base */
     , (4902165,  50,          4) /* AmmoType - Atlatl */
     , (4902165,  51,          3) /* CombatUse - Ammo */
     , (4902165,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (4902165, 150,        103) /* HookPlacement - Hook */
	 , (4902165, 158,          2) /* WieldRequirements - RawSkill */
     , (4902165, 159,         47) 
     , (4902165, 160,        250) /* WieldDifficulty */
     , (4902165, 151,          2) /* HookType - Wall */
	 , (4902165, 19006,        5) /* SplitArrowCount */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4902165,  17, True ) /* Inelastic */
     , (4902165,  69, False) /* IsSellable */
	 , (4902165,  19017, True ) /* SplitArrows */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4902165,  21,       0) /* WeaponLength */
     , (4902165,  22,     0.3) /* DamageVariance */
     , (4902165,  26,       0) /* MaximumVelocity */
     , (4902165,  29,       1) /* WeaponDefense */
     , (4902165,  62,       1) /* WeaponOffense */
     , (4902165,  63,       1) /* DamageMod */
     , (4902165,  78,       1) /* Friction */
     , (4902165,  79,       0) /* Elasticity */
	 , (4902165,  19072,  0.3) /* SplitArrowDamageMultiplier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4902165,   1, 'Volley of Dragon Scale Atlatl Darts') /* Name */
     , (4902165,  16, 'Deadly volley of 5 dragon scale atlatl darts that draw the elemental energies from elementally attuned atlatls to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4902165,   1, 0x02001A88) /* Setup */
     , (4902165,   3, 0x20000014) /* SoundTable */
     , (4902165,   6, 0x04000BEF) /* PaletteBase */
     , (4902165,   7, 0x10000352) /* ClothingBase */
     , (4902165,   8, 0x06006FCA) /* Icon */
	 , (4902165,  50, 0x06006C38) /* IconOverlay */
	 , (4902165,  52, 0x06005B0C) /* IconUnderlay */
     , (4902165,  22, 0x3400002B) /* PhysicsEffectTable */;

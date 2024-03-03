DELETE FROM `weenie` WHERE `class_Id` = 490214;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490214, 'ace490214-deadlyprismaticarrowpk', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490214,   1,        256) /* ItemType - MissileWeapon */
     , (490214,   3,         20) /* PaletteTemplate - Silver */
     , (490214,   5,          1) /* EncumbranceVal */
     , (490214,   8,          2) /* Mass */
     , (490214,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (490214,  11,       5000) /* MaxStackSize */
     , (490214,  12,          1) /* StackSize */
     , (490214,  13,          1) /* StackUnitEncumbrance */
     , (490214,  14,          2) /* StackUnitMass */
     , (490214,  15,        100) /* StackUnitValue */
     , (490214,  16,          1) /* ItemUseable - No */
     , (490214,  18,          1) /* UiEffects - Magical */
     , (490214,  19,        100) /* Value */
     , (490214,  44,         40) /* Damage */
     , (490214,  45,  268435456) /* DamageType - Base */
     , (490214,  50,          1) /* AmmoType - Arrow */
     , (490214,  51,          3) /* CombatUse - Ammo */
     , (490214,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (490214, 150,        103) /* HookPlacement - Hook */
	 , (490214, 158,          2) /* WieldRequirements - RawSkill */
     , (490214, 159,         47) 
     , (490214, 160,        250) /* WieldDifficulty */
     , (490214, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490214,  17, True ) /* Inelastic */
     , (490214,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490214,  21,       0) /* WeaponLength */
     , (490214,  22,     0.3) /* DamageVariance */
     , (490214,  26,       0) /* MaximumVelocity */
     , (490214,  29,       1) /* WeaponDefense */
     , (490214,  62,       1) /* WeaponOffense */
     , (490214,  63,       1) /* DamageMod */
     , (490214,  78,       1) /* Friction */
     , (490214,  79,       0) /* Elasticity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490214,   1, 'Dragon Scale Arrow') /* Name */
     , (490214,  16, 'Deadly, dragon scale arrows that draw the elemental energies from elementally attuned bows to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490214,   1, 0x02001A87) /* Setup */
     , (490214,   3, 0x20000014) /* SoundTable */
     , (490214,   6, 0x04000BEF) /* PaletteBase */
     , (490214,   7, 0x10000352) /* ClothingBase */
     , (490214,   8, 0x06006FC7) /* Icon */
	 , (490214,  52, 0x06005B0C) /* IconUnderlay */
     , (490214,  22, 0x3400002B) /* PhysicsEffectTable */;

DELETE FROM `weenie` WHERE `class_Id` = 490215;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490215, 'ace490215-dragonscalequarrel', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490215,   1,        256) /* ItemType - MissileWeapon */
     , (490215,   3,         20) /* PaletteTemplate - Silver */
     , (490215,   5,          1) /* EncumbranceVal */
     , (490215,   8,          2) /* Mass */
     , (490215,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (490215,  11,       5000) /* MaxStackSize */
     , (490215,  12,          1) /* StackSize */
     , (490215,  13,          1) /* StackUnitEncumbrance */
     , (490215,  14,          2) /* StackUnitMass */
     , (490215,  15,        100) /* StackUnitValue */
     , (490215,  16,          1) /* ItemUseable - No */
     , (490215,  18,          1) /* UiEffects - Magical */
     , (490215,  19,        100) /* Value */
     , (490215,  44,         53) /* Damage */
     , (490215,  45,  268435456) /* DamageType - Base */
     , (490215,  50,          2) /* AmmoType - Bolt */
     , (490215,  51,          3) /* CombatUse - Ammo */
     , (490215,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (490215, 150,        103) /* HookPlacement - Hook */
	 , (490215, 158,          2) /* WieldRequirements - RawSkill */
     , (490215, 159,         47) 
     , (490215, 160,        250) /* WieldDifficulty */
     , (490215, 151,          2) /* HookType - Wall */
     , (490215, 386,          0) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490215,  17, True ) /* Inelastic */
     , (490215,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490215,  21,       0) /* WeaponLength */
     , (490215,  22,     0.4) /* DamageVariance */
     , (490215,  26,       0) /* MaximumVelocity */
     , (490215,  29,       1) /* WeaponDefense */
     , (490215,  62,       1) /* WeaponOffense */
     , (490215,  63,       1) /* DamageMod */
     , (490215,  78,       1) /* Friction */
     , (490215,  79,       0) /* Elasticity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490215,   1, 'Dragon Scale Quarrel') /* Name */
     , (490215,  16, 'Deadly, dragon scale quarrels that draw the elemental energies from elementally attuned crossbows to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490215,   1, 0x02001A89) /* Setup */
     , (490215,   3, 0x20000014) /* SoundTable */
     , (490215,   6, 0x04000BEF) /* PaletteBase */
     , (490215,   7, 0x10000352) /* ClothingBase */
     , (490215,   8, 0x06006FCD) /* Icon */
	 , (490215,  52, 0x06005B0C) /* IconUnderlay */
     , (490215,  22, 0x3400002B) /* PhysicsEffectTable */;

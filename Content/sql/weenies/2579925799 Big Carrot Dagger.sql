DELETE FROM `weenie` WHERE `class_Id` = 2579925799;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (2579925799, 'bigdaggercarrot', 6, '2021-11-29 06:19:28') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (2579925799,   1,          1) /* ItemType - MeleeWeapon */
     , (2579925799,   5,        135) /* EncumbranceVal */
     , (2579925799,   8,         90) /* Mass */
     , (2579925799,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (2579925799,  16,          1) /* ItemUseable - No */
     , (2579925799,  18,        128) /* UiEffects - Frost */
     , (2579925799,  19,        300) /* Value */
     , (2579925799,  44,          1) /* Damage */
     , (2579925799,  45,          8) /* DamageType - Cold */
     , (2579925799,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (2579925799,  47,          6) /* AttackType - Thrust, Slash */
     , (2579925799,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (2579925799,  49,         20) /* WeaponTime */
     , (2579925799,  51,          1) /* CombatUse - Melee */
     , (2579925799,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (2579925799, 106,        115) /* ItemSpellcraft */
     , (2579925799, 107,        580) /* ItemCurMana */
     , (2579925799, 108,        580) /* ItemMaxMana */
     , (2579925799, 150,        103) /* HookPlacement - Hook */
     , (2579925799, 151,          2) /* HookType - Wall */
     , (2579925799, 158,          7) /* WieldRequirements - Level */
     , (2579925799, 159,          1) /* WieldSkillType - Axe */
     , (2579925799, 160,         30) /* WieldDifficulty */
     , (2579925799, 353,          6) /* WeaponType - Dagger */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (2579925799,  11, True ) /* IgnoreCollisions */
     , (2579925799,  13, True ) /* Ethereal */
     , (2579925799,  14, True ) /* GravityStatus */
     , (2579925799,  19, True ) /* Attackable */
     , (2579925799,  22, True ) /* Inscribable */
     , (2579925799,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (2579925799,   5,  -0.033) /* ManaRate */
     , (2579925799,  21,     0.4) /* WeaponLength */
     , (2579925799,  22,     0.9) /* DamageVariance */
     , (2579925799,  26,       0) /* MaximumVelocity */
     , (2579925799,  29,    1.00) /* WeaponDefense */
     , (2579925799,  39,     4.6) /* DefaultScale */
     , (2579925799,  62,    1.00) /* WeaponOffense */
     , (2579925799,  63,       1) /* DamageMod */
     , (2579925799, 136,       1) /* CriticalMultiplier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (2579925799,   1, 'Carrot Dagger') /* Name */
     , (2579925799,  16, 'A frozen Carrot, weighted perfectly for wielding like a dagger.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (2579925799,   1, 0x02000FFA) /* Setup */
     , (2579925799,   3, 0x20000014) /* SoundTable */
     , (2579925799,   8, 0x06002FC0) /* Icon */
     , (2579925799,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (2579925799,  1614,      2)  /* Aura of Blood Drinker Self IV */
     , (2579925799,  1623,      2)  /* Aura of Swift Killer Self II */;

DELETE FROM `weenie` WHERE `class_Id` = 600050;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600050, 'ace600050-blightedwand', 35, '2021-11-01 00:00:00') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600050,   1,      32768) /* ItemType - Caster */
     , (600050,   5,        150) /* EncumbranceVal */
     , (600050,   9,   16777216) /* ValidLocations - Held */
     , (600050,  16,    6291464) /* ItemUseable - SourceContainedTargetRemoteNeverWalk */
     , (600050,  19,      20000) /* Value */
     , (600050,  33,          1) /* Bonded - Bonded */
     , (600050,  36,       9999) /* ResistMagic */
     , (600050,  46,        512) /* DefaultCombatStyle - Magic */
     , (600050,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (600050,  94,         16) /* TargetType - Creature */
     , (600050, 106,        325) /* ItemSpellcraft */
     , (600050, 107,        800) /* ItemCurMana */
     , (600050, 108,        800) /* ItemMaxMana */
     , (600050, 109,         50) /* ItemDifficulty */
     , (600050, 114,          1) /* Attuned - Attuned */
     , (600050, 117,         60) /* ItemManaCost */
     , (600050, 150,        103) /* HookPlacement - Hook */
     , (600050, 151,          2) /* HookType - Wall */
     , (600050, 158,          2) /* WieldRequirements - RawSkill */
     , (600050, 159,         33) /* WieldSkillType - LifeMagic */
     , (600050, 160,        300) /* WieldDifficulty */
     , (600050, 166,         31) /* SlayerCreatureType - Human */
	 , (600050, 169,         16) /* TsysMutationData */
	 , (600050, 319,          50) /* ItemMaxLevel */
	 , (600050, 320,          1) /* ItemXpStyle - SameLevel */
     , (600050, 265,         139) /* EquipmentSetId - ParagonCaster */
     , (600050, 267,      86400) /* Lifespan */
     , (600050, 353,          0) /* WeaponType - Undef */
	 , (600050, 370,          5) /* GearDamage */
	 , (600050, 372,          5) /* GearDamage */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (600050,   4, 1000000000000) /* ItemTotalXp */
     , (600050,   5, 2000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600050,  22, True ) /* Inscribable */
     , (600050,  23, True ) /* DestroyOnSell */
     , (600050,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600050,   5,  -0.025) /* ManaRate */
     , (600050,  39,       1) /* DefaultScale */
     , (600050, 138,     1.4) /* SlayerDamageBonus */
     , (600050, 144,    0.02) /* ManaConversionMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600050,   1, 'Blighted Wand') /* Name */
     , (600050,  16, 'The blighted energy that infuses this wand also consumes it after 24 hours. The blighted weapon hungers for the blood of Isparians and the weapon is much more effective against them.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600050,   1, 0x02001865) /* Setup */
     , (600050,   3, 0x20000014) /* SoundTable */
     , (600050,   8, 0x0600696D) /* Icon */
     , (600050,  22, 0x3400002B) /* PhysicsEffectTable */
     , (600050,  27, 0x400000E1) /* UseUserAnimation - UseMagicWand */
     , (600050,  28,       2970) /* Spell - Hunter's Lash */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (600050,  2322,      2)  /* Hieromancer's Boon */
     , (600050,  2067,      2)  /* Inner Calm */
     , (600050,  2266,      2)  /* Harlune's Boon */
     , (600050,  2091,      2)  /* Mind Blossom */
     , (600050,  2525,      2)  /* Major Mana Conversion Prowess */;

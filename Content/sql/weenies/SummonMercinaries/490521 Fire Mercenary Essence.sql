DELETE FROM `weenie` WHERE `class_Id` = 490521;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490521, 'ace490521-Firemercenaryessence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490521,   1,        128) /* ItemType - Misc */
     , (490521,   5,         50) /* EncumbranceVal */
     , (490521,  16,          8) /* ItemUseable - Contained */
     , (490521,  18,        32) /* UiEffects - Fire */
     , (490521,  19,      250) /* Value */
     , (490521,  33,          0) /* Bonded - Normal */
     , (490521,  91,         50) /* MaxStructure */
     , (490521,  92,         50) /* Structure */
     , (490521,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490521,  94,         16) /* TargetType - Creature */
     , (490521, 114,          0) /* Attuned - Normal */
     , (490521, 124,          2) /* Version */
     , (490521, 266,      490520) /* PetClass - Fire Mercinary */
     , (490521, 280,        213) /* SharedCooldown */
     , (490521, 267,     604800) /* Lifespan */
	 , (490521, 369,        150) /* UseRequiresLevel */
	 , (490521, 370,        20) /* UseRequiresLevel */
	 , (490521, 371,        20) /* UseRequiresLevel */
	 , (490521, 372,        20) /* UseRequiresLevel */
	 , (490521, 373,        20) /* UseRequiresLevel */
	 , (490521, 374,        20) /* UseRequiresLevel */
	 , (490521, 375,        20) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490521,  22, True ) /* Inscribable */
     , (490521,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490521,  39,     0.4) /* DefaultScale */
     , (490521, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490521,   1, 'Fire Mercenary Essence') /* Name */
     , (490521,  14, 'Use this essence to summon or dismiss your Fire Mercenary.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490521,   1, 0x02000181) /* Setup */
     , (490521,   3, 0x20000014) /* SoundTable */
     , (490521,   6, 0x04000BEF) /* PaletteBase */
     , (490521,   8, 0x06001B42) /* Icon */
     , (490521,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490521,  50, 0x06007428) /* IconOverlay */
     , (490521,  52, 0x06007420) /* IconUnderlay */;

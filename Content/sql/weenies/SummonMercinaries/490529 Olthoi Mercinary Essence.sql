DELETE FROM `weenie` WHERE `class_Id` = 490529;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490529, 'ace490529-Olthoimercinaryessence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490529,   1,        128) /* ItemType - Misc */
     , (490529,   5,         50) /* EncumbranceVal */
     , (490529,  16,          8) /* ItemUseable - Contained */
     , (490529,  18,         800) /* UiEffects - Piercing */
     , (490529,  19,      250) /* Value */
     , (490529,  33,          0) /* Bonded - Normal */
     , (490529,  91,         50) /* MaxStructure */
     , (490529,  92,         50) /* Structure */
     , (490529,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490529,  94,         16) /* TargetType - Creature */
     , (490529, 114,          0) /* Attuned - Normal */
     , (490529, 124,          2) /* Version */
     , (490529, 266,      490528) /* PetClass - Olthoi Mercinary */
     , (490529, 280,        213) /* SharedCooldown */
     , (490529, 267,     604800) /* Lifespan */
	 , (490529, 369,        150) /* UseRequiresLevel */
	 , (490529, 370,        20) /* UseRequiresLevel */
	 , (490529, 371,        20) /* UseRequiresLevel */
	 , (490529, 372,        20) /* UseRequiresLevel */
	 , (490529, 373,        20) /* UseRequiresLevel */
	 , (490529, 374,        20) /* UseRequiresLevel */
	 , (490529, 375,        20) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490529,  22, True ) /* Inscribable */
     , (490529,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490529,  39,     0.4) /* DefaultScale */
     , (490529, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490529,   1, 'Olthoi Mercinary Essence') /* Name */
     , (490529,  14, 'Use this essence to summon or dismiss your Olthoi Mercinary.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490529,   1, 0x02000181) /* Setup */
     , (490529,   3, 0x20000014) /* SoundTable */
     , (490529,   6, 0x04000BEF) /* PaletteBase */
     , (490529,   8, 0x060010E7) /* Icon */
     , (490529,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490529,  50, 0x06007428) /* IconOverlay */
     , (490529,  52, 0x06007420) /* IconUnderlay */;

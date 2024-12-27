DELETE FROM `weenie` WHERE `class_Id` = 490525;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490525, 'ace490525-Frostmercinaryessence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490525,   1,        128) /* ItemType - Misc */
     , (490525,   5,         50) /* EncumbranceVal */
     , (490525,  16,          8) /* ItemUseable - Contained */
     , (490525,  18,         128) /* UiEffects - Frost */
     , (490525,  19,      250) /* Value */
     , (490525,  33,          0) /* Bonded - Normal */
     , (490525,  91,         50) /* MaxStructure */
     , (490525,  92,         50) /* Structure */
     , (490525,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490525,  94,         16) /* TargetType - Creature */
     , (490525, 114,          0) /* Attuned - Normal */
     , (490525, 124,          2) /* Version */
     , (490525, 266,      490524) /* PetClass - Fire Mercinary */
     , (490525, 280,        213) /* SharedCooldown */
     , (490525, 267,     604800) /* Lifespan */
	 , (490525, 369,        150) /* UseRequiresLevel */
	 , (490525, 370,        20) /* UseRequiresLevel */
	 , (490525, 371,        20) /* UseRequiresLevel */
	 , (490525, 372,        20) /* UseRequiresLevel */
	 , (490525, 373,        20) /* UseRequiresLevel */
	 , (490525, 374,        20) /* UseRequiresLevel */
	 , (490525, 375,        20) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490525,  22, True ) /* Inscribable */
     , (490525,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490525,  39,     0.4) /* DefaultScale */
     , (490525, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490525,   1, 'Frost Mercinary Essence') /* Name */
     , (490525,  14, 'Use this essence to summon or dismiss your Frost Mercinary.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490525,   1, 0x02000181) /* Setup */
     , (490525,   3, 0x20000014) /* SoundTable */
     , (490525,   6, 0x04000BEF) /* PaletteBase */
     , (490525,   8, 0x06002402) /* Icon */
     , (490525,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490525,  50, 0x06007428) /* IconOverlay */
     , (490525,  52, 0x06007420) /* IconUnderlay */;

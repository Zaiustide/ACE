DELETE FROM `weenie` WHERE `class_Id` = 490372;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490372, 'ace490372-Marionetteessence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490372,   1,        128) /* ItemType - Misc */
     , (490372,   5,         50) /* EncumbranceVal */
     , (490372,  16,          8) /* ItemUseable - Contained */
     , (490372,  18,         32) /* UiEffects - Fire */
     , (490372,  19,      10000) /* Value */
     , (490372,  33,          0) /* Bonded - Normal */
     , (490372,  91,         50) /* MaxStructure */
     , (490372,  92,         50) /* Structure */
     , (490372,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490372,  94,         16) /* TargetType - Creature */
     , (490372, 114,          0) /* Attuned - Normal */
     , (490372, 124,          2) /* Version */
     , (490372, 266,      490373) /* PetClass - Marionette */
     , (490372, 280,        213) /* SharedCooldown */
     , (490372, 369,        150) /* UseRequiresLevel */
	 , (490372, 370,        20) /* UseRequiresLevel */
	 , (490372, 371,        20) /* UseRequiresLevel */
	 , (490372, 372,        20) /* UseRequiresLevel */
	 , (490372, 373,        20) /* UseRequiresLevel */
	 , (490372, 374,        20) /* UseRequiresLevel */
	 , (490372, 375,        20) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490372,  22, True ) /* Inscribable */
     , (490372,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490372,  39,     0.4) /* DefaultScale */
     , (490372, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490372,   1, 'Marionette Essence') /* Name */
     , (490372,  14, 'Use this essence to summon or dismiss your Marionette.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490372,   1, 0x02000181) /* Setup */
     , (490372,   3, 0x20000014) /* SoundTable */
     , (490372,   6, 0x04000BEF) /* PaletteBase */
     , (490372,   8, 0x06001FBC) /* Icon */
     , (490372,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490372,  50, 0x06007428) /* IconOverlay */
     , (490372,  52, 0x06007420) /* IconUnderlay */;

DELETE FROM `weenie` WHERE `class_Id` = 490523;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490523, 'ace490523-Lightningmercinaryessence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490523,   1,        128) /* ItemType - Misc */
     , (490523,   5,         50) /* EncumbranceVal */
     , (490523,  16,          8) /* ItemUseable - Contained */
     , (490523,  18,         64) /* UiEffects - Lightning */
     , (490523,  19,      250) /* Value */
     , (490523,  33,          0) /* Bonded - Normal */
     , (490523,  91,         50) /* MaxStructure */
     , (490523,  92,         50) /* Structure */
     , (490523,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490523,  94,         16) /* TargetType - Creature */
     , (490523, 114,          0) /* Attuned - Normal */
     , (490523, 124,          2) /* Version */
     , (490523, 266,      490522) /* PetClass - Fire Mercinary */
     , (490523, 280,        213) /* SharedCooldown */
     , (490523, 267,     604800) /* Lifespan */
	 , (490523, 369,        150) /* UseRequiresLevel */
	 , (490523, 370,        20) /* UseRequiresLevel */
	 , (490523, 371,        20) /* UseRequiresLevel */
	 , (490523, 372,        20) /* UseRequiresLevel */
	 , (490523, 373,        20) /* UseRequiresLevel */
	 , (490523, 374,        20) /* UseRequiresLevel */
	 , (490523, 375,        20) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490523,  22, True ) /* Inscribable */
     , (490523,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490523,  39,     0.4) /* DefaultScale */
     , (490523, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490523,   1, 'Lightining Mercinary Essence') /* Name */
     , (490523,  14, 'Use this essence to summon or dismiss your Lightning Mercinary.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490523,   1, 0x02000181) /* Setup */
     , (490523,   3, 0x20000014) /* SoundTable */
     , (490523,   6, 0x04000BEF) /* PaletteBase */
     , (490523,   8, 0x06001C75) /* Icon */
     , (490523,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490523,  50, 0x06007428) /* IconOverlay */
     , (490523,  52, 0x06007420) /* IconUnderlay */;

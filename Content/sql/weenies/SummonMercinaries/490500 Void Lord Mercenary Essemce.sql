DELETE FROM `weenie` WHERE `class_Id` = 490500;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490500, 'ace490500-Voidlordessence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490500,   1,        128) /* ItemType - Misc */
     , (490500,   5,         50) /* EncumbranceVal */
     , (490500,  16,          8) /* ItemUseable - Contained */
     , (490500,  18,         1000) /* UiEffects - Fire */
     , (490500,  19,      250) /* Value */
     , (490500,  33,          0) /* Bonded - Normal */
     , (490500,  91,         50) /* MaxStructure */
     , (490500,  92,         50) /* Structure */
     , (490500,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490500,  94,         16) /* TargetType - Creature */
     , (490500, 114,          0) /* Attuned - Normal */
     , (490500, 124,          2) /* Version */
     , (490500, 266,      490501) /* PetClass - Void Lord Essence */
     , (490500, 280,        213) /* SharedCooldown */
	 , (490500, 267,     604800) /* Lifespan */
     , (490500, 369,        150) /* UseRequiresLevel */
	 , (490500, 370,        20) /* UseRequiresLevel */
	 , (490500, 371,        20) /* UseRequiresLevel */
	 , (490500, 372,        20) /* UseRequiresLevel */
	 , (490500, 373,        20) /* UseRequiresLevel */
	 , (490500, 374,        20) /* UseRequiresLevel */
	 , (490500, 375,        20) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490500,  22, True ) /* Inscribable */
     , (490500,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490500,  39,     0.4) /* DefaultScale */
     , (490500, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490500,   1, 'Void Lord Mercenary Essence') /* Name */
     , (490500,  14, 'Use this essence to summon or dismiss your Void Lord Mercenary.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490500,   1, 0x02000181) /* Setup */
     , (490500,   3, 0x20000014) /* SoundTable */
     , (490500,   6, 0x04000BEF) /* PaletteBase */
     , (490500,   8, 0x06001BBE) /* Icon */
     , (490500,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490500,  50, 0x06007428) /* IconOverlay */
     , (490500,  52, 0x06007420) /* IconUnderlay */;

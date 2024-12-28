DELETE FROM `weenie` WHERE `class_Id` = 490519;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490519, 'ace490519-acidmercinaryessence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490519,   1,        128) /* ItemType - Misc */
     , (490519,   5,         50) /* EncumbranceVal */
     , (490519,  16,          8) /* ItemUseable - Contained */
     , (490519,  18,        256) /* UiEffects - Acid */
     , (490519,  19,      250) /* Value */
     , (490519,  33,          0) /* Bonded - Normal */
     , (490519,  91,         50) /* MaxStructure */
     , (490519,  92,         50) /* Structure */
     , (490519,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490519,  94,         16) /* TargetType - Creature */
     , (490519, 114,          0) /* Attuned - Normal */
     , (490519, 124,          2) /* Version */
     , (490519, 266,      490518) /* PetClass - Acid Mercinary */
     , (490519, 280,        213) /* SharedCooldown */
     , (490519, 267,     604800) /* Lifespan */
	 , (490519, 369,        150) /* UseRequiresLevel */
	 , (490519, 370,        20) /* UseRequiresLevel */
	 , (490519, 371,        20) /* UseRequiresLevel */
	 , (490519, 372,        20) /* UseRequiresLevel */
	 , (490519, 373,        20) /* UseRequiresLevel */
	 , (490519, 374,        20) /* UseRequiresLevel */
	 , (490519, 375,        20) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490519,  22, True ) /* Inscribable */
     , (490519,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490519,  39,     0.4) /* DefaultScale */
     , (490519, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490519,   1, 'Acid Mercinary Essence') /* Name */
     , (490519,  14, 'Use this essence to summon or dismiss your Acid Mercinary.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490519,   1, 0x02000181) /* Setup */
     , (490519,   3, 0x20000014) /* SoundTable */
     , (490519,   6, 0x04000BEF) /* PaletteBase */
     , (490519,   8, 0x06002401) /* Icon */
     , (490519,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490519,  50, 0x06007428) /* IconOverlay */
     , (490519,  52, 0x06007420) /* IconUnderlay */;

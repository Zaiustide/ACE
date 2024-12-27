DELETE FROM `weenie` WHERE `class_Id` = 490527;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490527, 'ace490527-Tuskermercinaryessence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490527,   1,        128) /* ItemType - Misc */
     , (490527,   5,         50) /* EncumbranceVal */
     , (490527,  16,          8) /* ItemUseable - Contained */
     , (490527,  18,        200) /* UiEffects - Bludgeoning */
     , (490527,  19,      250) /* Value */
     , (490527,  33,          0) /* Bonded - Normal */
     , (490527,  91,         50) /* MaxStructure */
     , (490527,  92,         50) /* Structure */
     , (490527,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490527,  94,         16) /* TargetType - Creature */
     , (490527, 114,          0) /* Attuned - Normal */
     , (490527, 124,          2) /* Version */
     , (490527, 266,      490526) /* PetClass - Tusker Mercinary */
     , (490527, 280,        213) /* SharedCooldown */
     , (490527, 267,     604800) /* Lifespan */
	 , (490527, 369,        150) /* UseRequiresLevel */
	 , (490527, 370,        20) /* UseRequiresLevel */
	 , (490527, 371,        20) /* UseRequiresLevel */
	 , (490527, 372,        20) /* UseRequiresLevel */
	 , (490527, 373,        20) /* UseRequiresLevel */
	 , (490527, 374,        20) /* UseRequiresLevel */
	 , (490527, 375,        20) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490527,  22, True ) /* Inscribable */
     , (490527,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490527,  39,     0.4) /* DefaultScale */
     , (490527, 167,      45) /* CooldownDuration */
	 ;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490527,   1, 'Tusker Mercinary Essence') /* Name */
     , (490527,  14, 'Use this essence to summon or dismiss your Tusker Mercinary.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490527,   1, 0x02000181) /* Setup */
     , (490527,   3, 0x20000014) /* SoundTable */
     , (490527,   6, 0x04000BEF) /* PaletteBase */
     , (490527,   8, 0x06001033) /* Icon */
     , (490527,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490527,  50, 0x06007428) /* IconOverlay */
     , (490527,  52, 0x06007420) /* IconUnderlay */;

DELETE FROM `weenie` WHERE `class_Id` = 490370;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490370, 'ace490370-Virindiessence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490370,   1,        128) /* ItemType - Misc */
     , (490370,   5,         50) /* EncumbranceVal */
     , (490370,  16,          8) /* ItemUseable - Contained */
     , (490370,  18,        200) /* UiEffects - Bludgeoning */
     , (490370,  19,      250) /* Value */
     , (490370,  33,          0) /* Bonded - Normal */
     , (490370,  91,         50) /* MaxStructure */
     , (490370,  92,         50) /* Structure */
     , (490370,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490370,  94,         16) /* TargetType - Creature */
     , (490370, 114,          0) /* Attuned - Normal */
     , (490370, 124,          2) /* Version */
     , (490370, 266,      490371) /* PetClass - Virindi */
     , (490370, 280,        213) /* SharedCooldown */
     , (490370, 369,        150) /* UseRequiresLevel */
	 , (490370, 267,     604800) /* Lifespan */
	 , (490370, 370,        20) /* UseRequiresLevel */
	 , (490370, 371,        20) /* UseRequiresLevel */
	 , (490370, 372,        20) /* UseRequiresLevel */
	 , (490370, 373,        20) /* UseRequiresLevel */
	 , (490370, 374,        20) /* UseRequiresLevel */
	 , (490370, 375,        20) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490370,  22, True ) /* Inscribable */
     , (490370,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490370,  39,     0.4) /* DefaultScale */
     , (490370, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490370,   1, 'Virindi Mercenary Essence') /* Name */
     , (490370,  14, 'Use this essence to summon or dismiss your Virindi Mercenary.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490370,   1, 0x02000181) /* Setup */
     , (490370,   3, 0x20000014) /* SoundTable */
     , (490370,   6, 0x04000BEF) /* PaletteBase */
     , (490370,   8, 0x06001227) /* Icon */
     , (490370,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490370,  50, 0x06007428) /* IconOverlay */
     , (490370,  52, 0x06007420) /* IconUnderlay */;

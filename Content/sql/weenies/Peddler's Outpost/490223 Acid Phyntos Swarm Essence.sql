DELETE FROM `weenie` WHERE `class_Id` = 490223;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490223, 'ace490223-acidphyntosswarmessence', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490223,   1,        128) /* ItemType - Misc */
     , (490223,   5,         50) /* EncumbranceVal */
     , (490223,  16,          8) /* ItemUseable - Contained */
     , (490223,  18,        256) /* UiEffects - Acid */
     , (490223,  19,      10000) /* Value */
     , (490223,  33,          0) /* Bonded - Normal */
     , (490223,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490223,  94,         16) /* TargetType - Creature */
     , (490223, 114,          0) /* Attuned - Normal */
     , (490223, 124,          2) /* Version */
     , (490223, 266,      49142) /* PetClass - Swarm */
     , (490223, 280,        213) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490223,  22, True ) /* Inscribable */
     , (490223,  63, True ) /* UnlimitedUse */
     , (490223,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490223,  39,     0.4) /* DefaultScale */
     , (490223, 167,      45) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490223,   1, 'Acid Phyntos Swarm Essence') /* Name */
     , (490223,  14, 'Use this essence to summon or dismiss your Acid Phyntos Swarm.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490223,   1, 0x02000181) /* Setup */
     , (490223,   3, 0x20000014) /* SoundTable */
     , (490223,   6, 0x04000BEF) /* PaletteBase */
     , (490223,   8, 0x0600103A) /* Icon */
     , (490223,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490223,  50, 0x06007428) /* IconOverlay */
     , (490223,  52, 0x06007420) /* IconUnderlay */;

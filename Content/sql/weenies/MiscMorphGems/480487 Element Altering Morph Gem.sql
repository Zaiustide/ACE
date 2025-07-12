DELETE FROM `weenie` WHERE `class_Id` = 480487;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (480487, 'ace480487-ElementSwapmorphgem', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (480487,   1,       2048) /* ItemType - Gem */
     , (480487,   5,         10) /* EncumbranceVal */
     , (480487,  11,          1) /* MaxStackSize */
     , (480487,  12,          1) /* StackSize */
     , (480487,  13,         10) /* StackUnitEncumbrance */
     , (480487,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (480487,  18,          1) /* UiEffects - Magical */
     , (480487,  19,         5) /* Value */
     , (480487,  65,        101) /* Placement - Resting */
     , (480487,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (480487,  94,          33025) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (480487,   1, False) /* Stuck */
     , (480487,  11, True ) /* IgnoreCollisions */
     , (480487,  13, True ) /* Ethereal */
     , (480487,  14, True ) /* GravityStatus */
     , (480487,  19, True ) /* Attackable */
     , (480487,  22, True ) /* Inscribable */
     , (480487,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (480487,   1, 'Element Altering Morph Gem') /* Name */
     , (480487,  14, 'Applying this gem to a loot type weapon currently imbued with Critical Strike, Crushing Blow or Armor Rending has a chance to randomly alter the current imbue.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (480487,   1, 0x02000179) /* Setup */
     , (480487,   3, 0x20000014) /* SoundTable */
     , (480487,   6, 0x04000BEF) /* PaletteBase */
     , (480487,   7, 0x1000010B) /* ClothingBase */
     , (480487,  22, 0x3400002B) /* PhysicsEffectTable */
     , (480487,  8, 0x060067E4) /* Icon */
     , (480487,  52, 0x060065FB) /* IconUnderlay */;


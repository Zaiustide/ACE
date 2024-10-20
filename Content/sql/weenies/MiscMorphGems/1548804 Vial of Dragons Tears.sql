DELETE FROM `weenie` WHERE `class_Id` = 1548804;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1548804, 'ace1548804-vialofdragontearsmorphgem', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1548804,   1,       2048) /* ItemType - Gem */
     , (1548804,   5,         10) /* EncumbranceVal */
     , (1548804,  11,          1) /* MaxStackSize */
     , (1548804,  12,          1) /* StackSize */
     , (1548804,  13,         10) /* StackUnitEncumbrance */
     , (1548804,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (1548804,  18,          1) /* UiEffects - Magical */
     , (1548804,  19,         25) /* Value */
     , (1548804,  65,        101) /* Placement - Resting */
     , (1548804,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (1548804,  94,          35215) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1548804,   1, False) /* Stuck */
     , (1548804,  11, True ) /* IgnoreCollisions */
     , (1548804,  13, True ) /* Ethereal */
     , (1548804,  14, True ) /* GravityStatus */
     , (1548804,  19, True ) /* Attackable */
     , (1548804,  22, True ) /* Inscribable */
     , (1548804,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1548804,   1, 'Vial of Dragons Tears') /* Name */
     , (1548804,  14, 'This vial contains a small amount of dragon''s tears. The vial feels light in the hand as if it somehow has no burden at all, it almost floats! It appears to have a magical property which can make objects feel significantly lighter and increase the carrying capacity of the user. Applying this to loot generated items can reduce the burden to a negative value, where you feel lighter when you wear the items. Three vials can be applied to each item.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1548804,   1, 0x02000179) /* Setup */
     , (1548804,   3, 0x20000014) /* SoundTable */
     , (1548804,   6, 0x04000BEF) /* PaletteBase */
     , (1548804,   7, 0x1000010B) /* ClothingBase */
     , (1548804,  22, 0x3400002B) /* PhysicsEffectTable */
     , (1548804,  8, 0x06006A6A) /* Icon */
     , (1548804,  52, 0x06005B0C) /* IconUnderlay */;

/* Lifestoned Changelog:
{
  "Changelog": [
    {
      "created": "2022-01-17T02:18:55.5489445Z",
      "author": "ACE.Adapter",
      "comment": "Weenie exported from ACEmulator world database using ACE.Adapter"
    }
  ],
  "IsDone": false
}
*/

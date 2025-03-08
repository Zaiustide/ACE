DELETE FROM `weenie` WHERE `class_Id` = 1548802;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1548802, 'ace1548802-Empyreanforginghammermorphgem', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1548802,   1,       2048) /* ItemType - Gem */
     , (1548802,   5,         10) /* EncumbranceVal */
     , (1548802,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (1548802,  18,          1) /* UiEffects - Magical */
     , (1548802,  19,         25) /* Value */
     , (1548802,  65,        101) /* Placement - Resting */
     , (1548802,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (1548802,  94,      35215) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1548802,   1, False) /* Stuck */
     , (1548802,  11, True ) /* IgnoreCollisions */
     , (1548802,  13, True ) /* Ethereal */
     , (1548802,  14, True ) /* GravityStatus */
     , (1548802,  19, True ) /* Attackable */
     , (1548802,  22, True ) /* Inscribable */
     , (1548802,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1548802,   1, 'Empyrean Forging Hammer') /* Name */
     , (1548802,  14, 'An extremely well-made blacksmithing hammer. This hammer looks ancient, crafted by the greatest of Empyrean Blacksmiths. This tool looks as if it was used to alter the set on armor or add one if no set is present. This can only be applied to a piece of armor once. May be used to alter the set on a peice of armor, or a chance to add one.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1548802,   1, 0x02000179) /* Setup */
     , (1548802,   3, 0x20000014) /* SoundTable */
     , (1548802,   6, 0x04000BEF) /* PaletteBase */
     , (1548802,   7, 0x1000010B) /* ClothingBase */
     , (1548802,  22, 0x3400002B) /* PhysicsEffectTable */
     , (1548802,  8, 0x060062ED) /* Icon */
     , (1548802,  52, 0x06005B0C) /* IconUnderlay */;

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

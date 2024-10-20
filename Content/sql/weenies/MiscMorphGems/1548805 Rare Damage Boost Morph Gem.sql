DELETE FROM `weenie` WHERE `class_Id` = 1548805;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1548805, 'ace1548805-raredamageboostmorphgem', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1548805,   1,       2048) /* ItemType - Gem */
     , (1548805,   5,         10) /* EncumbranceVal */
     , (1548805,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (1548805,  18,          1) /* UiEffects - Magical */
     , (1548805,  19,         10) /* Value */
     , (1548805,  65,        101) /* Placement - Resting */
     , (1548805,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (1548805,  94,          35215) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1548805,   1, False) /* Stuck */
     , (1548805,  11, True ) /* IgnoreCollisions */
     , (1548805,  13, True ) /* Ethereal */
     , (1548805,  14, True ) /* GravityStatus */
     , (1548805,  19, True ) /* Attackable */
     , (1548805,  22, True ) /* Inscribable */
     , (1548805,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1548805,   1, 'Rare Damage Boost Morph Gem') /* Name */
     , (1548805,  14, 'Applying this gem to loot type items has a 100% chance to apply the spell Rare Armor Damage Boost V.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1548805,   1, 0x02000179) /* Setup */
     , (1548805,   3, 0x20000014) /* SoundTable */
     , (1548805,   6, 0x04000BEF) /* PaletteBase */
     , (1548805,   7, 0x1000010B) /* ClothingBase */
     , (1548805,  22, 0x3400002B) /* PhysicsEffectTable */
     , (1548805,  8, 0x06005B2B) /* Icon */
     , (1548805,  52, 0x06005B0C) /* IconUnderlay */;

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

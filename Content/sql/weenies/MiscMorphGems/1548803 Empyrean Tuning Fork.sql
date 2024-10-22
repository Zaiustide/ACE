DELETE FROM `weenie` WHERE `class_Id` = 1548803;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1548803, 'ace1548803-Empyreantuningforkmorphgem', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1548803,   1,       2048) /* ItemType - Gem */
     , (1548803,   5,         10) /* EncumbranceVal */
     , (1548803,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (1548803,  18,          1) /* UiEffects - Magical */
     , (1548803,  19,         10) /* Value */
     , (1548803,  65,        101) /* Placement - Resting */
     , (1548803,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (1548803,  94,      35215) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1548803,   1, False) /* Stuck */
     , (1548803,  11, True ) /* IgnoreCollisions */
     , (1548803,  13, True ) /* Ethereal */
     , (1548803,  14, True ) /* GravityStatus */
     , (1548803,  19, True ) /* Attackable */
     , (1548803,  22, True ) /* Inscribable */
     , (1548803,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1548803,   1, 'Empyrean Tuning Fork') /* Name */
     , (1548803,  14, 'This tuning fork appears to have been used by the ancient Empyrean blacksmiths to alter spell cantrips on armor. It appears to resonate at a unique frequency that can alter the current legendary cantrips on a piece of armor. There is a small chance to add or remove one cantrip.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1548803,   1, 0x02000179) /* Setup */
     , (1548803,   3, 0x20000014) /* SoundTable */
     , (1548803,   6, 0x04000BEF) /* PaletteBase */
     , (1548803,   7, 0x1000010B) /* ClothingBase */
     , (1548803,  22, 0x3400002B) /* PhysicsEffectTable */
     , (1548803,  8, 0x06007470) /* Icon */
     , (1548803,  52, 0x06005B0C) /* IconUnderlay */;

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

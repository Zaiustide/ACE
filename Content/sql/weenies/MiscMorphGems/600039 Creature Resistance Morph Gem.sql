DELETE FROM `weenie` WHERE `class_Id` = 600039;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600039, 'ace600039-Creatureresrandomizermorphgem', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600039,   1,       2048) /* ItemType - Gem */
     , (600039,   5,         10) /* EncumbranceVal */
     , (600039,  11,          1) /* MaxStackSize */
     , (600039,  12,          1) /* StackSize */
     , (600039,  13,         10) /* StackUnitEncumbrance */
     , (600039,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (600039,  18,          1) /* UiEffects - Magical */
     , (600039,  19,         15) /* Value */
     , (600039,  65,        101) /* Placement - Resting */
     , (600039,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (600039,  94,          33025) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600039,   1, False) /* Stuck */
     , (600039,  11, True ) /* IgnoreCollisions */
     , (600039,  13, True ) /* Ethereal */
     , (600039,  14, True ) /* GravityStatus */
     , (600039,  19, True ) /* Attackable */
     , (600039,  22, True ) /* Inscribable */
     , (600039,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600039,   1, 'Creature Resistance Morph Gem') /* Name */
     , (600039,  14, 'Applying this gem to loot generated gear (e.g., armor, jewelry) with the creature resistance property may alter the current creature resistance property of the item.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600039,   1, 0x02000179) /* Setup */
     , (600039,   3, 0x20000014) /* SoundTable */
     , (600039,   6, 0x04000BEF) /* PaletteBase */
     , (600039,   7, 0x1000010B) /* ClothingBase */
     , (600039,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (600039,   8, 0x06002971) /* Icon */
     , (600039,  50, 0x06006BAF) /* IconOverlay */
     , (600039,  52, 0x060065FB) /* IconUnderlay */;

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

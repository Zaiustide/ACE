DELETE FROM `weenie` WHERE `class_Id` = 600058;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600058, 'ace600058-oiloftheelementsmorphgem', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600058,   1,       2048) /* ItemType - Gem */
     , (600058,   5,         10) /* EncumbranceVal */
     , (600058,  11,          1) /* MaxStackSize */
     , (600058,  12,          1) /* StackSize */
     , (600058,  13,         10) /* StackUnitEncumbrance */
     , (600058,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (600058,  18,          1) /* UiEffects - Magical */
     , (600058,  19,         15) /* Value */
     , (600058,  65,        101) /* Placement - Resting */
     , (600058,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (600058,  94,          33025) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600058,   1, False) /* Stuck */
     , (600058,  11, True ) /* IgnoreCollisions */
     , (600058,  13, True ) /* Ethereal */
     , (600058,  14, True ) /* GravityStatus */
     , (600058,  19, True ) /* Attackable */
     , (600058,  22, True ) /* Inscribable */
     , (600058,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600058,   1, 'Oil of the Elements') /* Name */
     , (600058,  14, 'An odd looking oil that seems to contain all of the elements. The Empyrean used this to apply elemental damage to weapons. Applying this oil to a loot generated weapon will alter the elemental damage type of that weapon.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600058,   1, 0x02000179) /* Setup */
     , (600058,   3, 0x20000014) /* SoundTable */
     , (600058,   6, 0x04000BEF) /* PaletteBase */
     , (600058,   7, 0x1000010B) /* ClothingBase */
     , (600058,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (600058,   8, 0x060066B6) /* Icon */
     , (600058,  52, 0x060065FB) /* IconUnderlay */;

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

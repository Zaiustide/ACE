DELETE FROM `weenie` WHERE `class_Id` = 600035;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600035, 'ace600035-durableEmpyreanforginghammermorphgem', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600035,   1,       2048) /* ItemType - Gem */
     , (600035,   5,         10) /* EncumbranceVal */
     , (600035,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (600035,  18,          1) /* UiEffects - Magical */
     , (600035,  19,         25) /* Value */
     , (600035,  65,        101) /* Placement - Resting */
	 , (600035,  91,          5) /* MaxStructure */
     , (600035,  92,          5) /* Structure */
     , (600035,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (600035,  94,      35215) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600035,   1, False) /* Stuck */
     , (600035,  11, True ) /* IgnoreCollisions */
     , (600035,  13, True ) /* Ethereal */
     , (600035,  14, True ) /* GravityStatus */
     , (600035,  19, True ) /* Attackable */
     , (600035,  22, True ) /* Inscribable */
     , (600035,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600035,   1, 'Durable Empyrean Forging Hammer') /* Name */
     , (600035,  14, 'An extremely well-made blacksmithing hammer. This hammer looks ancient, crafted by the greatest of Empyrean Blacksmiths. Use on a piece of looted armor, jewelry or clothing for a chance to add an Equipment Set or alter the existing Equipment Set. But proceed with caution, even a small mistake when using this tool could cause your Equipment Set to be removed.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600035,   1, 0x02000179) /* Setup */
     , (600035,   3, 0x20000014) /* SoundTable */
     , (600035,   6, 0x04000BEF) /* PaletteBase */
     , (600035,   7, 0x1000010B) /* ClothingBase */
     , (600035,  22, 0x3400002B) /* PhysicsEffectTable */
     , (600035,  8, 0x060062ED) /* Icon */
     , (600035,  52, 0x06005B0C) /* IconUnderlay */;

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

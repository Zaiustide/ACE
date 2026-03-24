DELETE FROM `weenie` WHERE `class_Id` = 600038;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600038, 'gemgemofcreatureslayingenhancement', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600038,   1,       2048) /* ItemType - Gem */
     , (600038,   3,         39) /* PaletteTemplate - Black */
	 , (600038,  11,        100) /* MaxStackSize */
     , (600038,  12,          1) /* StackSize */
     , (600038,  13,         5) /* StackUnitEncumbrance */
     , (600038,  15,          25) /* StackUnitValue */
     , (600038,   5,          5) /* EncumbranceVal */
     , (600038,   8,          5) /* Mass */
     , (600038,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (600038,  18,          1) /* UiEffects - Magical */
     , (600038,  19,         25) /* Value */
     , (600038,  33,          1) /* Bonded - Slippery */
     , (600038,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (600038,  94,         35215) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600038,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600038,   1, 'Creature Slaying Enhancement Morph Gem') /* Name */
     , (600038,  16, 'Use this gem on loot-generated items with the Creature Slayer property to add a creature slaying rating that increases damage done to that creature type.  Gems can be applied more then once for a chance to reroll the rating currently on the item.  This does not affect weapons.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600038,   1, 0x02000179) /* Setup */
     , (600038,   3, 0x20000014) /* SoundTable */
     , (600038,   6, 0x04000BEF) /* PaletteBase */
     , (600038,   7, 0x1000010B) /* ClothingBase */
     , (600038,  22, 0x3400002B) /* PhysicsEffectTable */
	, (600038,   8, 0x0600296E) /* Icon */
     , (600038,  50, 0x06007551) /* IconOverlay */
     , (600038,  52, 0x060065FB) /* IconUnderlay */;
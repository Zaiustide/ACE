DELETE FROM `weenie` WHERE `class_Id` = 600037;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600037, 'gemgemofcreatureresenhancement', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600037,   1,       2048) /* ItemType - Gem */
     , (600037,   3,         39) /* PaletteTemplate - Black */
	 , (600037,  11,        100) /* MaxStackSize */
     , (600037,  12,          1) /* StackSize */
     , (600037,  13,         5) /* StackUnitEncumbrance */
     , (600037,  15,          25) /* StackUnitValue */
     , (600037,   5,          5) /* EncumbranceVal */
     , (600037,   8,          5) /* Mass */
     , (600037,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (600037,  18,          1) /* UiEffects - Magical */
     , (600037,  19,         25) /* Value */
     , (600037,  33,          1) /* Bonded - Slippery */
     , (600037,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (600037,  94,         35215) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600037,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600037,   1, 'Creature Resistance Enhancement Morph Gem') /* Name */
     , (600037,  16, 'Use this gem on loot-generated items with the Creature Resistance property to add a creature resistance rating that increases damage resisted to that creature type.  Gems can be applied more than once for a chance to reroll the rating currently on the item.  This does not affect weapons.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600037,   1, 0x02000179) /* Setup */
     , (600037,   3, 0x20000014) /* SoundTable */
     , (600037,   6, 0x04000BEF) /* PaletteBase */
     , (600037,   7, 0x1000010B) /* ClothingBase */
     , (600037,  22, 0x3400002B) /* PhysicsEffectTable */
	, (600037,   8, 0x0600296E) /* Icon */
     , (600037,  50, 0x06006BAF) /* IconOverlay */
     , (600037,  52, 0x060065FB) /* IconUnderlay */;

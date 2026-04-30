DELETE FROM `weenie` WHERE `class_Id` = 361847;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (361847, 'ace361847-FroreLeylineShard', 1, '2026-04-03 02:41:18') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (361847,   1,        128) /* ItemType - Misc */
     , (361847,   3,         14) /* PaletteTemplate - Red */
     , (361847,   5,         10) /* EncumbranceVal */
     , (361847,  16,          1) /* ItemUseable - No */
     , (361847,  19,         20) /* Value */
     , (361847,  33,          1) /* Bonded - Bonded */
     , (361847,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (361847, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (361847,  22, True ) /* Inscribable */
     , (361847,  23, True ) /* DestroyOnSell */
     , (361847,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (361847,  12,     0.5) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (361847,   1, 'Frore Coalesced Leyline Shard') /* Name */
     , (361847,  16, 'A small, albeit powerful, shard of the arcane leyline that runs beneath the Lost City of Frore. Its magical energies have coalesced to take physical form. Someone at the Mountain Retreat may be interested in drawing from its arcane energies.') /* LongDesc */
     , (361847,  33, 'FroreShard_Pickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (361847,   1, 0x02000179) /* Setup */
     , (361847,   3, 0x20000014) /* SoundTable */
     , (361847,   6, 0x04000BEF) /* PaletteBase */
     , (361847,   7, 0x1000010B) /* ClothingBase */
     , (361847,   8, 0x0600296B) /* Icon */
     , (361847,  22, 0x3400002B) /* PhysicsEffectTable */
     , (361847,  52, 0x060065FB) /* IconUnderlay */;


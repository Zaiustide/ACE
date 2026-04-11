DELETE FROM `weenie` WHERE `class_Id` = 361846;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (361846, 'ace361846-CitLeylineShard', 1, '2026-04-03 02:41:18') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (361846,   1,        128) /* ItemType - Misc */
     , (361846,   3,         14) /* PaletteTemplate - Red */
     , (361846,   5,         10) /* EncumbranceVal */
     , (361846,  16,          1) /* ItemUseable - No */
     , (361846,  19,         20) /* Value */
     , (361846,  33,          1) /* Bonded - Bonded */
     , (361846,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (361846, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (361846,  22, True ) /* Inscribable */
     , (361846,  23, True ) /* DestroyOnSell */
     , (361846,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (361846,  12,     0.5) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (361846,   1, 'Lugian Citadel Coalesced Leyline Shard') /* Name */
     , (361846,  16, 'A small, albeit powerful, shard of the arcane leyline that runs beneath the Lugian Citadel. Its magical energies have coalesced to take physical form. Someone at the Mountain Retreat may be interested in drawing from its arcane energies.') /* LongDesc */
     , (361846,  33, 'CitShard_Pickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (361846,   1, 0x02000179) /* Setup */
     , (361846,   3, 0x20000014) /* SoundTable */
     , (361846,   6, 0x04000BEF) /* PaletteBase */
     , (361846,   7, 0x1000010B) /* ClothingBase */
     , (361846,   8, 0x06002B7F) /* Icon */
     , (361846,  22, 0x3400002B) /* PhysicsEffectTable */
     , (361846,  52, 0x060065FB) /* IconUnderlay */;


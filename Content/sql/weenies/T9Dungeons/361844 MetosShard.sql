DELETE FROM `weenie` WHERE `class_Id` = 361844;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (361844, 'ace361844-MetosShard', 1, '2026-04-03 02:41:18') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (361844,   1,        128) /* ItemType - Misc */
     , (361844,   3,         14) /* PaletteTemplate - Red */
     , (361844,   5,         10) /* EncumbranceVal */
     , (361844,  16,          1) /* ItemUseable - No */
     , (361844,  19,         20) /* Value */
     , (361844,  33,          1) /* Bonded - Bonded */
     , (361844,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (361844, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (361844,  22, True ) /* Inscribable */
     , (361844,  23, True ) /* DestroyOnSell */
     , (361844,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (361844,  12,     0.5) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (361844,   1, 'Metos Coalesced Leyline Shard') /* Name */
     , (361844,  16, 'A small, albeit powerful, shard of the arcane leyline that runs beneath the Halls of Metos. Its magical energies have coalesced to take physical form. Someone at the Mountain Retreat may be interested in drawing from its arcane energies.') /* LongDesc */
     , (361844,  33, 'MetosShard_Pickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (361844,   1, 0x02000179) /* Setup */
     , (361844,   3, 0x20000014) /* SoundTable */
     , (361844,   6, 0x04000BEF) /* PaletteBase */
     , (361844,   7, 0x1000010B) /* ClothingBase */
     , (361844,   8, 0x06002B80) /* Icon */
     , (361844,  22, 0x3400002B) /* PhysicsEffectTable */
     , (361844,  52, 0x060065FB) /* IconUnderlay */;


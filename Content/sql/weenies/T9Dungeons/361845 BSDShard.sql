DELETE FROM `weenie` WHERE `class_Id` = 361845;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (361845, 'ace361845-BSDLeylineShard', 1, '2026-04-03 02:41:18') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (361845,   1,        128) /* ItemType - Misc */
     , (361845,   3,         14) /* PaletteTemplate - Red */
     , (361845,   5,         10) /* EncumbranceVal */
     , (361845,  16,          1) /* ItemUseable - No */
     , (361845,  19,         20) /* Value */
     , (361845,  33,          1) /* Bonded - Bonded */
     , (361845,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (361845, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (361845,  22, True ) /* Inscribable */
     , (361845,  23, True ) /* DestroyOnSell */
     , (361845,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (361845,  12,     0.5) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (361845,   1, 'Black Spawn Den Coalesced Leyline Shard') /* Name */
     , (361845,  16, 'A small, albeit powerful, shard of the arcane leyline that runs beneath the Black Spawn Den. Its magical energies have coalesced to take physical form. Someone at the Mountain Retreat may be interested in drawing from its arcane energies.') /* LongDesc */
     , (361845,  33, 'BSDShard_Pickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (361845,   1, 0x02000179) /* Setup */
     , (361845,   3, 0x20000014) /* SoundTable */
     , (361845,   6, 0x04000BEF) /* PaletteBase */
     , (361845,   7, 0x1000010B) /* ClothingBase */
     , (361845,   8, 0x06002B8F) /* Icon */
     , (361845,  22, 0x3400002B) /* PhysicsEffectTable */
     , (361845,  52, 0x060065FB) /* IconUnderlay */;


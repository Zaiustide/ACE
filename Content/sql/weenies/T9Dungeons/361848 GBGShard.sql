DELETE FROM `weenie` WHERE `class_Id` = 361848;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (361848, 'ace361848-GBGLeylineShard', 1, '2026-04-03 02:41:18') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (361848,   1,        128) /* ItemType - Misc */
     , (361848,   3,         14) /* PaletteTemplate - Red */
     , (361848,   5,         10) /* EncumbranceVal */
     , (361848,  16,          1) /* ItemUseable - No */
     , (361848,  19,         20) /* Value */
     , (361848,  33,          1) /* Bonded - Bonded */
     , (361848,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (361848, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (361848,  22, True ) /* Inscribable */
     , (361848,  23, True ) /* DestroyOnSell */
     , (361848,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (361848,  12,     0.5) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (361848,   1, 'Golem Burial Ground Coalesced Leyline Shard') /* Name */
     , (361848,  16, 'A small, albeit powerful, shard of the arcane leyline that runs beneath the Golem Burial Ground. Its magical energies have coalesced to take physical form. Someone at the Mountain Retreat may be interested in drawing from its arcane energies.') /* LongDesc */
     , (361848,  33, 'GBGShard_Pickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (361848,   1, 0x02000179) /* Setup */
     , (361848,   3, 0x20000014) /* SoundTable */
     , (361848,   6, 0x04000BEF) /* PaletteBase */
     , (361848,   7, 0x1000010B) /* ClothingBase */
     , (361848,   8, 0x06002969) /* Icon */
     , (361848,  22, 0x3400002B) /* PhysicsEffectTable */
     , (361848,  52, 0x060065FB) /* IconUnderlay */;


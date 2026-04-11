DELETE FROM `weenie` WHERE `class_Id` = 361842;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (361842, 'ace361842-spectralheartmetos', 1, '2026-04-03 02:41:18') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (361842,   1,        128) /* ItemType - Misc */
     , (361842,   3,         14) /* PaletteTemplate - Red */
     , (361842,   5,         10) /* EncumbranceVal */
     , (361842,  16,          1) /* ItemUseable - No */
     , (361842,  19,         20) /* Value */
     , (361842,  33,          1) /* Bonded - Bonded */
     , (361842,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (361842, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (361842,  22, True ) /* Inscribable */
     , (361842,  23, True ) /* DestroyOnSell */
     , (361842,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (361842,  12,     0.5) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (361842,   1, 'Spectral Heart of Metos') /* Name */
     , (361842,  16, 'A partially insubstantial heart of ghostly ectoplasm. Though you can barely touch the heart, it feels cold. This heart belonged to the lingering shade of the great Empyrean golem craftsman, Metos.') /* LongDesc */
     , (361842,  33, 'MetosSpecHeart_Pickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (361842,   1, 0x020009C2) /* Setup */
     , (361842,   3, 0x20000014) /* SoundTable */
     , (361842,   6, 0x04000BEF) /* PaletteBase */
     , (361842,   7, 0x1000010B) /* ClothingBase */
     , (361842,   8, 0x060029DE) /* Icon */
     , (361842,  22, 0x3400002B) /* PhysicsEffectTable */
     , (361842,  52, 0x060065FB) /* IconUnderlay */;


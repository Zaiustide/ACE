DELETE FROM `weenie` WHERE `class_Id` = 361841;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (361841, 'ace361841-prismaticharbingerblood', 1, '2026-04-03 02:41:18') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (361841,   1,        128) /* ItemType - Misc */
     , (361841,   3,         14) /* PaletteTemplate - Red */
     , (361841,   5,         10) /* EncumbranceVal */
     , (361841,  16,          1) /* ItemUseable - No */
     , (361841,  19,         20) /* Value */
     , (361841,  33,          1) /* Bonded - Bonded */
     , (361841,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (361841, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (361841,  22, True ) /* Inscribable */
     , (361841,  23, True ) /* DestroyOnSell */
     , (361841,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (361841,  12,     0.5) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (361841,   1, 'Prismatic Harbinger Blood') /* Name */
     , (361841,  16, 'A vial of swirling prismatic blood collected from the otherworldy being known as the Harbinger.') /* LongDesc */
     , (361841,  33, 'PrisHarbyBlood_Pickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (361841,   1, 0x020000AB) /* Setup */
     , (361841,   3, 0x20000014) /* SoundTable */
     , (361841,   6, 0x04000BEF) /* PaletteBase */
     , (361841,   7, 0x10000168) /* ClothingBase */
     , (361841,   8, 0x06002563) /* Icon */
     , (361841,  22, 0x3400002B) /* PhysicsEffectTable */
     , (361841,  52, 0x060065FB) /* IconUnderlay */;


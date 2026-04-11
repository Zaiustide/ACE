DELETE FROM `weenie` WHERE `class_Id` = 361843;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (361843, 'ace361843-DickofBiggus', 1, '2026-04-03 02:41:18') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (361843,   1,        128) /* ItemType - Misc */
     , (361843,   3,         14) /* PaletteTemplate - Red */
     , (361843,   5,         10) /* EncumbranceVal */
     , (361843,  16,          1) /* ItemUseable - No */
     , (361843,  19,         20) /* Value */
     , (361843,  33,          1) /* Bonded - Bonded */
     , (361843,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (361843, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (361843,  22, True ) /* Inscribable */
     , (361843,  23, True ) /* DestroyOnSell */
     , (361843,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (361843,  12,     0.5) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (361843,   1, 'Dick of Biggus') /* Name */
     , (361843,  16, 'The still-throbbing dick of the lugian commander, Biggus Dickus. It makes you feel almost as inadequate as that XXL vibrator your wife has been spending a lot of time with lately. Loser.') /* LongDesc */
     , (361843,  33, 'DickofBiggus_Pickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (361843,   1, 0x020008CA) /* Setup */
     , (361843,   3, 0x20000014) /* SoundTable */
     , (361843,   6, 0x04000BEF) /* PaletteBase */
     , (361843,   7, 0x1000010B) /* ClothingBase */
     , (361843,   8, 0x06001D98) /* Icon */
     , (361843,  22, 0x3400002B) /* PhysicsEffectTable */
     , (361843,  52, 0x060065FB) /* IconUnderlay */;


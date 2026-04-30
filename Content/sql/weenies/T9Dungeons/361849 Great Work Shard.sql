DELETE FROM `weenie` WHERE `class_Id` = 361849;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (361849, 'ace361849-GreatWorkShard', 1, '2026-04-03 02:41:18') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (361849,   1,        128) /* ItemType - Misc */
     , (361849,   3,         14) /* PaletteTemplate - Red */
     , (361849,   5,         10) /* EncumbranceVal */
     , (361849,  16,          1) /* ItemUseable - No */
     , (361849,  19,         20) /* Value */
     , (361849,  33,          1) /* Bonded - Bonded */
     , (361849,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (361849, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (361849,  22, True ) /* Inscribable */
     , (361849,  23, True ) /* DestroyOnSell */
     , (361849,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (361849,  12,     0.5) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (361849,   1, 'Great Work Shard') /* Name */
     , (361849,  16, 'A shard of the reinvigorated Great Work of Frore. The Gelidites built the city of Frore around the Great Work to protect it from the world and prevent the shattering of the prison of the Hopeslayer. Their efforts, however, were in vain.') /* LongDesc */
     , (361849,  33, 'GreatWorkShard_Pickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (361849,   1, 0x02000179) /* Setup */
     , (361849,   3, 0x20000014) /* SoundTable */
     , (361849,   6, 0x04000BEF) /* PaletteBase */
     , (361849,   7, 0x1000010B) /* ClothingBase */
     , (361849,   8, 0x060020FB) /* Icon */
     , (361849,  22, 0x3400002B) /* PhysicsEffectTable */
     , (361849,  52, 0x060065FB) /* IconUnderlay */;


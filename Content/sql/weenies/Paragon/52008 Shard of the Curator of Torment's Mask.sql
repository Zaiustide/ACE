DELETE FROM `weenie` WHERE `class_Id` = 52008;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (52008, 'ace52008-shardofthecuratoroftormentsmask', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (52008,   1,        128) /* ItemType - Misc */
     , (52008,   5,        200) /* EncumbranceVal */
     , (52008,  16,          1) /* ItemUseable - No */
     , (52008,  19,         50) /* Value */
     , (52008,  33,          1) /* Bonded - Bonded */
     , (52008,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (52008, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (52008,  22, True ) /* Inscribable */
     , (52008,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (52008,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (52008,   1, 'Shard of the Curator of Torment''s Mask') /* Name */
     , (52008,  15, 'This broken mask shard was taken from the Curator of Torment in his catacombs deep under the Obsidian Plains.') /* ShortDesc */
     , (52008,  33, 'TormentShardPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (52008,   1, 0x020019F5) /* Setup */
     , (52008,   3, 0x20000014) /* SoundTable */
     , (52008,   6, 0x0400007E) /* PaletteBase */
     , (52008,   8, 0x06006E1C) /* Icon */
     , (52008,  22, 0x3400002B) /* PhysicsEffectTable */;

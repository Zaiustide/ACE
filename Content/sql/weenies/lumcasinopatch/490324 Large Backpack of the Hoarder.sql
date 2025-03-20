DELETE FROM `weenie` WHERE `class_Id` = 490324;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490324, 'ace490324-Mulepack', 21, '2021-11-01 00:00:00') /* Container */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490324,   1,        512) /* ItemType - Container */
     , (490324,   3,         39) /* PaletteTemplate - Black */
     , (490324,   5,         50000) /* EncumbranceVal */
     , (490324,   6,         96) /* ItemsCapacity */
     , (490324,   8,        200) /* Mass */
     , (490324,   9,          0) /* ValidLocations - None */
     , (490324,  16,         56) /* ItemUseable - ContainedViewedRemote */
     , (490324,  18,          1) /* UiEffects - Magical */
     , (490324,  19,          1) /* Value */
     , (490324,  33,          1) /* Bonded - Bonded */
     , (490324,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490324,  96,       2000) /* EncumbranceCapacity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490324,  22, True ) /* Inscribable */
     , (490324,  23, True ) /* DestroyOnSell */
     , (490324,  69, False) /* IsSellable */
     , (490324,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490324,  39,    1.75) /* DefaultScale */
     , (490324,  54,     0.5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490324,   1, 'Large Backpack of the Hoarder') /* Name */
     , (490324,  14, 'Use this item to close it.') /* Use */
     , (490324,  16, 'A large, well constructed backpack.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490324,   1, 0x02001097) /* Setup */
     , (490324,   3, 0x20000014) /* SoundTable */
     , (490324,   6, 0x0400007E) /* PaletteBase */
     , (490324,   7, 0x10000553) /* ClothingBase */
     , (490324,   8, 0x06001BB4) /* Icon */
     , (490324,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490324,  50, 0x0600138C) /* IconOverlay */
     , (490324,  52, 0x06006700) /* IconUnderlay */;
DELETE FROM `weenie` WHERE `class_Id` = 490306;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490306, 'ace490306-festivalshirt', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490306,   1,          4) /* ItemType - Clothing */
     , (490306,   3,         76) /* PaletteTemplate - Orange */
     , (490306,   4,         104) /* ClothingPriority - UnderwearChest, UnderwearUpperArms */
     , (490306,   5,         42) /* EncumbranceVal */
     , (490306,   9,         30) /* ValidLocations - ChestWear, AbdomenWear, UpperArmWear */
     , (490306,  16,          1) /* ItemUseable - No */
     , (490306,  19,         20) /* Value */
     , (490306,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490306,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490306,  12,       0) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490306,   1, 'Festival Shirt') /* Name */
     , (490306,   7, 'Spooky, Creepy and full of candy') /* Inscription */
     , (490306,   8, '-') /* ScribeName */
     , (490306,  16, 'A shirt celebrating the Festival Season.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490306,   1, 0x020001C3) /* Setup */
     , (490306,   3, 0x20000014) /* SoundTable */
     , (490306,   6, 0x0400007E) /* PaletteBase */
     , (490306,   7, 0x10000659) /* ClothingBase */
     , (490306,   8, 0x06000FF3) /* Icon */
     , (490306,  22, 0x3400002B) /* PhysicsEffectTable */;

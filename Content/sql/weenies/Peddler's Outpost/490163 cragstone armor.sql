DELETE FROM `weenie` WHERE `class_Id` = 490163;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490163, 'cragstonearmor', 2, '2005-02-09 10:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490163,   1,          4) /* ItemType - Armor */
     , (490163,   4,      1024) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs, OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms, Feet */
     , (490163,   5,        0) /* EncumbranceVal */
     , (490163,   8,        450) /* Mass */
     , (490163,   9,      512) /* ValidLocations - Armor */
     , (490163,  16,          1) /* ItemUseable - No */
     , (490163,  19,       20) /* Value */
     , (490163,  27,          1) /* ArmorType - Cloth */
     , (490163,  28,        0) /* ArmorLevel */
     , (490163,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490163,  22, True ) /* Inscribable */
     , (490163, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490163,   5,   -0.01) /* ManaRate */
     , (490163,  12,       1) /* Shade */
     , (490163,  13,     0.4) /* ArmorModVsSlash */
     , (490163,  14,     0.2) /* ArmorModVsPierce */
     , (490163,  15,     0.4) /* ArmorModVsBludgeon */
     , (490163,  16,     1.1) /* ArmorModVsCold */
     , (490163,  17,     0.4) /* ArmorModVsFire */
     , (490163,  18,     0.4) /* ArmorModVsAcid */
     , (490163,  19,     1.1) /* ArmorModVsElectric */
     , (490163, 110,       1) /* BulkMod */
     , (490163, 111,       1) /* SizeMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490163,   1, 'Cragstone armor') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490163,   1, 0x0200004E) /* Setup */
     , (490163,   3, 0x20000014) /* SoundTable */
     , (490163,   7, 0x100006F5) /* ClothingBase */
     , (490163,   8, 0x0600301D) /* Icon */
     , (490163,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490163,  36, 0x0E000016) /* MutateFilter */;


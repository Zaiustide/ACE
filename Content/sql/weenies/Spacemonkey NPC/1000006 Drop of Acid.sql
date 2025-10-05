DELETE FROM `weenie` WHERE `class_Id` = 1000006;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000006, 'dropofacid', 51, '2021-11-03 08:49:59') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000006,   1,     128) /* ItemType - PromissoryNote */
     , (1000006,   5,          1) /* EncumbranceVal */
     , (1000006,   8,          1) /* Mass */
     , (1000006,   9,          0) /* ValidLocations - None */
	 , (1000006,  18,        256) /* UiEffects - Acid */
     , (1000006,  11,        100) /* MaxStackSize */
     , (1000006,  12,          1) /* StackSize */
     , (1000006,  13,          1) /* StackUnitEncumbrance */
     , (1000006,  14,          1) /* StackUnitMass */
     , (1000006,  15,          1) /* StackUnitValue */
     , (1000006,  16,          1) /* ItemUseable - No */
     , (1000006,  19,          1) /* Value */
     , (1000006,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

     INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000006,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000006,   1, 'Drop of Acid') /* Name */
     , (1000006,  20, 'Drops of Acid') /* PluralName */
	 , (1000006,  16, 'A drop of a potent acid. As you breath in the fumes you start to hallucinate. Spacemonkey might be interested in this sample.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000006,  8, 0x06006EA8) /* Icon */
     , (1000006,  52, 0x060065FB) /* IconUnderlay */;



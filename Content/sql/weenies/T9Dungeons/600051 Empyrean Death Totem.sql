DELETE FROM `weenie` WHERE `class_Id` = 600051;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600051, 'ace600051-empyreandeathtotem', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600051,   1,    8388608) /* ItemType - CraftAlchemyBase */
     , (600051,  11,         50) /* MaxStackSize */
     , (600051,  12,          1) /* StackSize */
     , (600051,  13,          0) /* StackUnitEncumbrance */
     , (600051,  15,     200000) /* StackUnitValue */
     , (600051,  19,     200000) /* Value */
     , (600051,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (600051,  94,   67108864) /* TargetType - CraftAlchemyIntermediate */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600051,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600051,   1, 'Empyrean Death Totem') /* Name */
     , (600051,  16, 'A odd looking totem of immense value. The Empyrean appeared to have altered the properties of these totems to protect their items upon death') /* LongDesc */
     , (600051,  20, 'Empyrean Death Totems') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600051,   1, 0x020016F8) /* Setup */
     , (600051,   3, 0x20000014) /* SoundTable */
     , (600051,   6, 0x04000BEF) /* PaletteBase */
     , (600051,   8, 0x06006FF5) /* Icon */
     , (600051,  22, 0x3400002B) /* PhysicsEffectTable */
     , (600051,  52, 0x06006E9B) /* IconUnderlay */;

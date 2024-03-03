DELETE FROM `weenie` WHERE `class_Id` = 490282;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490282, 'ace490282-encapsulatedspirit', 44, '2022-12-28 05:57:21') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490282,   1,        128) /* ItemType - Misc */
     , (490282,   5,         50) /* EncumbranceVal */
     , (490282,  11,         50) /* MaxStackSize */
     , (490282,  12,          1) /* StackSize */
     , (490282,  13,         50) /* StackUnitEncumbrance */
     , (490282,  15,        500) /* StackUnitValue */
     , (490282,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (490282,  19,        500) /* Value */
     , (490282,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (490282,  94,        128) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490282,   1, False) /* Stuck */
     , (490282,  11, True ) /* IgnoreCollisions */
     , (490282,  13, True ) /* Ethereal */
     , (490282,  14, True ) /* GravityStatus */
     , (490282,  15, True ) /* LightsStatus */
     , (490282,  19, True ) /* Attackable */
	 , (490282,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490282,  76,     0.5) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490282,   1, 'Infinite Encapsulated Spirit') /* Name */
     , (490282,  14, 'This item is used in Summoning.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490282,   1, 0x02001BC4) /* Setup */
     , (490282,   3, 0x20000014) /* SoundTable */
     , (490282,   6, 0x04000BEF) /* PaletteBase */
     , (490282,   8, 0x0600742C) /* Icon */
     , (490282,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (490282,  52, 0x06005B0C) /* IconUnderlay */;

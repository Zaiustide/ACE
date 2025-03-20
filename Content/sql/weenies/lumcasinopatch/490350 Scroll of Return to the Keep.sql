DELETE FROM `weenie` WHERE `class_Id` = 490350;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490350, 'ace490350-scrollofreturntothekeep', 34, '2022-12-28 05:57:21') /* Scroll */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490350,   1,       8192) /* ItemType - Writable */
     , (490350,   5,         30) /* EncumbranceVal */
     , (490350,  16,          8) /* ItemUseable - Contained */
     , (490350,  19,         50) /* Value */
     , (490350,  33,          1) /* Bonded - Bonded */
     , (490350,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490350, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490350,   1, False) /* Stuck */
     , (490350,  11, True ) /* IgnoreCollisions */
     , (490350,  13, True ) /* Ethereal */
     , (490350,  14, True ) /* GravityStatus */
     , (490350,  19, True ) /* Attackable */
     , (490350,  22, True ) /* Inscribable */
     , (490350,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490350,  39,     1.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490350,   1, 'Scroll of Return to the Keep') /* Name */
     , (490350,  14, 'Use this item to attempt to learn its spell.') /* Use */
     , (490350,  16, 'Inscribed spell: Return to the Keep sends the caster to Candeth Keep.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490350,   1, 0x0200018A) /* Setup */
     , (490350,   8, 0x06003441) /* Icon */
     , (490350,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490350,  28,       4214) /* Spell - Return to the Keep */;

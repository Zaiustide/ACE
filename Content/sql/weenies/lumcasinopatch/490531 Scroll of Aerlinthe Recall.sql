DELETE FROM `weenie` WHERE `class_Id` = 490531;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490531, 'ace490531-scrollofaerlintherecall', 34, '2022-12-28 05:57:21') /* Scroll */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490531,   1,       8192) /* ItemType - Writable */
     , (490531,   5,         30) /* EncumbranceVal */
     , (490531,  16,          8) /* ItemUseable - Contained */
     , (490531,  19,         10) /* Value */
     , (490531,  33,          1) /* Bonded - Bonded */
     , (490531,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490531, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490531,   1, False) /* Stuck */
     , (490531,  11, True ) /* IgnoreCollisions */
     , (490531,  13, True ) /* Ethereal */
     , (490531,  14, True ) /* GravityStatus */
     , (490531,  19, True ) /* Attackable */
     , (490531,  22, True ) /* Inscribable */
     , (490531,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490531,  39,     1.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490531,   1, 'Scroll of Aerlinthe Recall') /* Name */
     , (490531,  14, 'Use this item to attempt to learn its spell.') /* Use */
     , (490531,  16, 'Inscribed spell: Aerlinthe Recall sends the caster to Aerlinthe Island.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490531,   1, 0x0200018A) /* Setup */
     , (490531,   8, 0x06003441) /* Icon */
     , (490531,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490531,  28,       2041) /* Spell - Aerlinthe Recall */;

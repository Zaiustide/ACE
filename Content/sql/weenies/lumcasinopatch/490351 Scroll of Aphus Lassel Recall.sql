DELETE FROM `weenie` WHERE `class_Id` = 490351;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490351, 'ace490351-scrollofboborecall', 34, '2022-12-28 05:57:21') /* Scroll */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490351,   1,       8192) /* ItemType - Writable */
     , (490351,   5,         30) /* EncumbranceVal */
     , (490351,  16,          8) /* ItemUseable - Contained */
     , (490351,  19,         5) /* Value */
     , (490351,  33,          1) /* Bonded - Bonded */
     , (490351,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490351, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490351,   1, False) /* Stuck */
     , (490351,  11, True ) /* IgnoreCollisions */
     , (490351,  13, True ) /* Ethereal */
     , (490351,  14, True ) /* GravityStatus */
     , (490351,  19, True ) /* Attackable */
     , (490351,  22, True ) /* Inscribable */
     , (490351,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490351,  39,     1.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490351,   1, 'Scroll of Aphus Lassel Recall') /* Name */
     , (490351,  14, 'Use this item to attempt to learn its spell.') /* Use */
     , (490351,  16, 'Inscribed spell: Sends the caster to Aphus Lassel.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490351,   1, 0x0200018A) /* Setup */
     , (490351,   8, 0x06003441) /* Icon */
     , (490351,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490351,  28,       2931) /* Spell - Return to the Keep */;

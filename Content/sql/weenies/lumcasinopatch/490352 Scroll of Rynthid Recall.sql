DELETE FROM `weenie` WHERE `class_Id` = 490352;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490352, 'ace490352-scrollofrynthidrecall', 34, '2022-12-28 05:57:21') /* Scroll */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490352,   1,       8192) /* ItemType - Writable */
     , (490352,   5,         30) /* EncumbranceVal */
     , (490352,  16,          8) /* ItemUseable - Contained */
     , (490352,  19,         25) /* Value */
     , (490352,  33,          1) /* Bonded - Bonded */
     , (490352,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490352, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490352,   1, False) /* Stuck */
     , (490352,  11, True ) /* IgnoreCollisions */
     , (490352,  13, True ) /* Ethereal */
     , (490352,  14, True ) /* GravityStatus */
     , (490352,  19, True ) /* Attackable */
     , (490352,  22, True ) /* Inscribable */
     , (490352,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490352,  39,     1.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490352,   1, 'Scroll of Rynthid Recall') /* Name */
     , (490352,  14, 'Use this item to attempt to learn its spell.') /* Use */
     , (490352,  16, 'Inscribed spell: Sends the caster to the area overyrun by Rynthid.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490352,   1, 0x0200018A) /* Setup */
     , (490352,   8, 0x06003441) /* Icon */
     , (490352,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490352,  28,       6150) /* Spell - Return to the Keep */;

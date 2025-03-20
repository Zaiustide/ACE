DELETE FROM `weenie` WHERE `class_Id` = 490153;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490153, 'Balloon Instruction Manual', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490153,   1,       8192) /* ItemType - Writable */
     , (490153,   5,          5) /* EncumbranceVal */
     , (490153,   8,        230) /* Mass */
     , (490153,   9,          0) /* ValidLocations - None */
     , (490153,  16,          8) /* ItemUseable - Contained */
     , (490153,  19,          500) /* Value */
     , (490153,  33,          0) /* Bonded - Normal */
     , (490153,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490153, 114,          0) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490153,  22, False) /* Inscribable */
     , (490153,  23, True ) /* DestroyOnSell */
     , (490153,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490153,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490153,   1, 'Balloon Instruction Manual') /* Name */
     , (490153,  15, 'Give this item to balloon to activate.') /* ShortDesc */
     , (490153,  16, 'Give these instructions to the Balloon in order to fly it.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490153,   1, 0x02000155) /* Setup */
     , (490153,   3, 0x20000014) /* SoundTable */
     , (490153,   8, 0x060029D8) /* Icon */
     , (490153,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (490153,  52, 100689403) /* IconUnderlay */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (490153, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (490153, 0, 0xFFFFFFFF, 'Directions to Island Outpost', 'prewritten', False, '
Look towards the North for the Twin Islands. We have established a new Outpost at its most Northern point. Careful as you fly over the Islands, we have heard reports of Dragon''s in the area and we lost one Balloon last week.
');

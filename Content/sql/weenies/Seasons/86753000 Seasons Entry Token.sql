DELETE FROM `weenie` WHERE `class_Id` = 86753000;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (86753000, 'seasonsEntryToken', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (86753000,   1,       2048) /* ItemType - Gem */
     , (86753000,   5,          5) /* EncumbranceVal */
     , (86753000,   8,          5) /* Mass */
     , (86753000,   9,          0) /* ValidLocations - None */
     , (86753000,  16,          1) /* ItemUseable - No */
     , (86753000,  19,          0) /* Value */
     , (86753000,  33,          1) /* Bonded - Bonded */
     , (86753000,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (86753000, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (86753000,  22, True ) /* Inscribable */
     , (86753000,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (86753000,   1, 'Doctide Seasons - Season 1 Entry Token') /* Name */
     , (86753000,  15, 'Short description does not show up in game.') /* ShortDesc */
     , (86753000,  16, 'Give this token to Janus if you wish to join Season 1 of Doctide Seasons.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (86753000,   1, 0x02000305) /* Setup */
     , (86753000,   3, 0x20000014) /* SoundTable */
     , (86753000,   8, 0x06001E31) /* Icon */
     , (86753000,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (86753000,  50, 0x06006C20) /* IconOverlay */;

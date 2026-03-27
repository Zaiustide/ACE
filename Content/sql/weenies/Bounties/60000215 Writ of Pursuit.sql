DELETE FROM `weenie` WHERE `class_Id` = 60000215;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (60000215, 'ace60000215-writofpursuit', 1, '2026-03-27 05:09:50') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (60000215,   1,        128) /* ItemType - Misc */
     , (60000215,   5,          5) /* EncumbranceVal */
     , (60000215,   8,          5) /* Mass */
     , (60000215,   9,   16777216) /* ValidLocations - Held */
     , (60000215,  16,          1) /* ItemUseable - No */
     , (60000215,  18,         32) /* UiEffects - Fire */
     , (60000215,  19,          1) /* Value */
     , (60000215,  33,          1) /* Bonded - Bonded */
     , (60000215,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (60000215, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (60000215,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (60000215,   1, 'Writ of Pursuit') /* Name */
     , (60000215,  16, 'A writ that allows a player to create their own bounty with a reward. 

Inscribe this writ with the name of the player you wish to create a bounty for. Be sure to provide a reward amount (in phials) using the following format:

name:amount
 ') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (60000215,   1,   33554773) /* Setup */
     , (60000215,   3,  536870932) /* SoundTable */
     , (60000215,   8,  100672433) /* Icon */
     , (60000215,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (60000215, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (60000215, 0, 4294967295, '', 'prewritten', True, 'You are already well paid for your storage facilities. Do not insult me again by asking for increased compensation. Do try to maintain an ordinary facade--it does not behoove you to call unwanted attention to yourself. Store these items until further notice, when you will be called upon to transport them to our factory.
');

/* Lifestoned Changelog:
{
  "LastModified": "2026-03-26T21:49:27.5901023-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "Bounty Contract",
  "IsDone": false
}
*/

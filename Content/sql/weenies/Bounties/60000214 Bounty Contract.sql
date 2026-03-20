DELETE FROM `weenie` WHERE `class_Id` = 60000214;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (60000214, 'ace60000214-bountycontract', 72, '2026-03-21 18:21:25') /* BountyContract */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (60000214,   1,        128) /* ItemType - Misc */
     , (60000214,   5,          5) /* EncumbranceVal */
     , (60000214,   8,          5) /* Mass */
     , (60000214,   9,   16777216) /* ValidLocations - Held */
     , (60000214,  16,          1) /* ItemUseable - No */
     , (60000214,  18,         32) /* UiEffects - Fire */
     , (60000214,  19,          0) /* Value */
     , (60000214,  33,          1) /* Bonded - Bonded */
     , (60000214,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (60000214, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (60000214,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (60000214,   1, 'Bounty Contract') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (60000214,   1,   33557474) /* Setup */
     , (60000214,   3,  536870932) /* SoundTable */
     , (60000214,   8,  100672466) /* Icon */
     , (60000214,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (60000214, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (60000214, 0, 4294967295, '', 'prewritten', True, 'You are already well paid for your storage facilities. Do not insult me again by asking for increased compensation. Do try to maintain an ordinary facade--it does not behoove you to call unwanted attention to yourself. Store these items until further notice, when you will be called upon to transport them to our factory.
');

/* Lifestoned Changelog:
{
  "LastModified": "2026-03-21T11:21:10.8359285-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "Bounty Contract",
  "IsDone": false
}
*/

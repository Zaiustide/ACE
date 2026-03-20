DELETE FROM `weenie` WHERE `class_Id` = 60000213;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (60000213, 'ace60000213-bountypurchasetoken', 1, '2026-03-20 22:30:41') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (60000213,   1,       2048) /* ItemType - Gem */
     , (60000213,   3,         36) /* PaletteTemplate - LightPurpleMetal */
     , (60000213,   5,         80) /* EncumbranceVal */
     , (60000213,   8,        500) /* Mass */
     , (60000213,   9,   16777216) /* ValidLocations - Held */
     , (60000213,  16,          1) /* ItemUseable - No */
     , (60000213,  19,          5) /* Value */
     , (60000213,  33,          1) /* Bonded - Bonded */
     , (60000213,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (60000213, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (60000213,  22, True ) /* Inscribable */
     , (60000213,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (60000213,  39, 1.600000023841858) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (60000213,   1, 'Bounty Purchase Token') /* Name */
     , (60000213,  16, 'A large coin used to purchase bounties from the Bounty Collector.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (60000213,   1,   33554802) /* Setup */
     , (60000213,   6,   67111919) /* PaletteBase */
     , (60000213,   7,  268435747) /* ClothingBase */
     , (60000213,   8,  100676408) /* Icon */;

/* Lifestoned Changelog:
{
  "LastModified": null,
  "ModifiedBy": null,
  "Changelog": [],
  "UserChangeSummary": "Bounty Purchase Token",
  "IsDone": false
}
*/

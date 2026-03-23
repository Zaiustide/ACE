DELETE FROM `weenie` WHERE `class_Id` = 60000212;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (60000212, 'ace60000212-playerhead', 1, '2024-04-14 02:50:12') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (60000212,   1,        128) /* ItemType - Misc */
     , (60000212,   3,          4) /* PaletteTemplate - Brown */
     , (60000212,   5,        200) /* EncumbranceVal */
     , (60000212,   8,        200) /* Mass */
     , (60000212,   9,          0) /* ValidLocations - None */
     , (60000212,  16,          1) /* ItemUseable - No */
     , (60000212,  19,          0) /* Value */
     , (60000212,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (60000212, 150,        103) /* HookPlacement - Hook */
     , (60000212, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (60000212,  22, True ) /* Inscribable */
     , (60000212,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (60000212,  12, 0.6600000262260437) /* Shade */
     , (60000212,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (60000212,   1, 'Player Head') /* Name */
     , (60000212,  15, 'A head of a player.') /* ShortDesc */
     , (60000212,  16, 'A freshly decapitated head of a player.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (60000212,   1,   33557363) /* Setup */
     , (60000212,   3,  536870932) /* SoundTable */
     , (60000212,   6,   67108990) /* PaletteBase */
     , (60000212,   7,  268436268) /* ClothingBase */
     , (60000212,   8,  100672172) /* Icon */
     , (60000212,  22,  872415275) /* PhysicsEffectTable */
     , (60000212,  36,  234881046) /* MutateFilter */;

/* Lifestoned Changelog:
{
  "LastModified": "2024-04-13T19:49:03.4845255-07:00",
  "ModifiedBy": "pourman",
  "Changelog": [],
  "UserChangeSummary": "player head",
  "IsDone": false
}
*/

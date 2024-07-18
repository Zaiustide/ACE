DELETE FROM `weenie` WHERE `class_Id` = 490280;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490280, 'ace490280-petdragonegg', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490280,   1,        128) /* ItemType - Misc */
     , (490280,   5,          5) /* EncumbranceVal */
     , (490280,  16,          8) /* ItemUseable - Contained */
     , (490280,  19,         10) /* Value */
     , (490280,  33,          1) /* Bonded - Bonded */
     , (490280,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490280,  94,         16) /* TargetType - Creature */
     , (490280, 114,          1) /* Attuned - Attuned */
     , (490280, 266,      490279) /* PetClass - Pet Mouf */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490280,  22, True ) /* Inscribable */
     , (490280,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490280,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490280,   1, 'Pet Dragon Egg') /* Name */
     , (490280,  14, 'Use this Egg to summon your pet Island Dragon. Handing it a PK Trophy will clear your Vitae!') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490280,   1, 0x02001655) /* Setup */
     , (490280,   3, 0x20000014) /* SoundTable */
     , (490280,   8, 0x06005A3B) /* Icon */
     , (490280,  22, 0x3400002B) /* PhysicsEffectTable */;

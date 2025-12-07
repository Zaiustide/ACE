DELETE FROM `weenie` WHERE `class_Id` = 451602421;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451602421, 'traparalyzingfear', 26, '2005-02-09 10:00:00') /* Switch */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451602421,   1,        128) /* ItemType - Misc */
     , (451602421,   5,       6000) /* EncumbranceVal */
     , (451602421,   8,       3000) /* Mass */
     , (451602421,  16,          1) /* ItemUseable - No */
     , (451602421,  19,        200) /* Value */
     , (451602421,  83,       4096) /* ActivationResponse - CastSpell */
     , (451602421,  93,         20) /* PhysicsState - Ethereal, IgnoreCollisions */
     , (451602421, 106,      10000) /* ItemSpellcraft */
     , (451602421, 119,          1) /* Active */
     , (451602421, 134,          8) /* PlayerKillerStatus - Unprotected */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451602421,   1, True ) /* Stuck */
     , (451602421,  12, False) /* ReportCollisions */
     , (451602421,  13, True ) /* Ethereal */
     , (451602421,  14, False) /* GravityStatus */
     , (451602421,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451602421,  11,      1) /* ResetInterval */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451602421,   1, 'Magic trap') /* Name */
     , (451602421,  22, 'You hear a faint clicking sound.') /* ActivationFailure */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451602421,   1, 0x020000ED) /* Setup */
     , (451602421,   3, 0x20000014) /* SoundTable */
     , (451602421,   8, 0x06001066) /* Icon */
     , (451602421,  22, 0x3400002B) /* PhysicsEffectTable */
     , (451602421,  28,       2421) /* Spell - Avalanche */;

DELETE FROM `weenie` WHERE `class_Id` = 451603932;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451603932, 'trapgraelsrage', 26, '2005-02-09 10:00:00') /* Switch */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451603932,   1,        128) /* ItemType - Misc */
     , (451603932,   5,       6000) /* EncumbranceVal */
     , (451603932,   8,       3000) /* Mass */
     , (451603932,  16,          1) /* ItemUseable - No */
     , (451603932,  19,        200) /* Value */
     , (451603932,  83,       4096) /* ActivationResponse - CastSpell */
     , (451603932,  93,         20) /* PhysicsState - Ethereal, IgnoreCollisions */
     , (451603932, 106,      10000) /* ItemSpellcraft */
     , (451603932, 119,          1) /* Active */
     , (451603932, 134,          8) /* PlayerKillerStatus - Unprotected */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451603932,   1, True ) /* Stuck */
     , (451603932,  12, False) /* ReportCollisions */
     , (451603932,  13, True ) /* Ethereal */
     , (451603932,  14, False) /* GravityStatus */
     , (451603932,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451603932,  11,      1) /* ResetInterval */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451603932,   1, 'Magic trap') /* Name */
     , (451603932,  22, 'You hear a faint clicking sound.') /* ActivationFailure */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451603932,   1, 0x020000ED) /* Setup */
     , (451603932,   3, 0x20000014) /* SoundTable */
     , (451603932,   8, 0x06001066) /* Icon */
     , (451603932,  22, 0x3400002B) /* PhysicsEffectTable */
     , (451603932,  28,       3054) /* Spell - Soul Dissolution */;

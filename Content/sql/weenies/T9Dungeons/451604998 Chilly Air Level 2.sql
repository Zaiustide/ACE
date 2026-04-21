DELETE FROM `weenie` WHERE `class_Id` = 451604998;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451604998, 'T9airchillylvl2', 13, '2005-02-09 10:00:00') /* HotSpot */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451604998,   1,        128) /* ItemType - Misc */
     , (451604998,   5,          1) /* EncumbranceVal */
     , (451604998,   8,          1) /* Mass */
     , (451604998,   9,          0) /* ValidLocations - None */
     , (451604998,  16,          1) /* ItemUseable - No */
     , (451604998,  19,          1) /* Value */
     , (451604998,  44,          860) /* Damage */
     , (451604998,  45,          8) /* DamageType - Cold */
     , (451604998,  93,         12) /* PhysicsState - Ethereal, ReportCollisions */
     , (451604998, 119,          0) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451604998,   1, True ) /* Stuck */
     , (451604998,  11, False) /* IgnoreCollisions */
     , (451604998,  12, True ) /* ReportCollisions */
     , (451604998,  13, True ) /* Ethereal */
     , (451604998,  14, False) /* GravityStatus */
     , (451604998,  18, True ) /* Visibility */
     , (451604998,  24, True ) /* UiHidden */
     , (451604998,  55, True ) /* IsHot */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451604998,  22,     0.9) /* DamageVariance */
     , (451604998,  39,     1.5) /* DefaultScale */
     , (451604998, 105,     120) /* HotspotCycleTime */
     , (451604998, 106,    0.33) /* HotspotCycleTimeVariance */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451604998,   1, 'Chilly Air Level 2') /* Name */
     , (451604998,  17, 'The bitter cold causes you %i points of damage!') /* ActivationTalk */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451604998,   1, 0x02000638) /* Setup */
     , (451604998,   3, 0x20000054) /* SoundTable */
     , (451604998,   8, 0x06001049) /* Icon */;

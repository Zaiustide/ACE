DELETE FROM `weenie` WHERE `class_Id` = 451605118;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451605118, 'T9airchillylvl3large', 13, '2005-02-09 10:00:00') /* HotSpot */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451605118,   1,        128) /* ItemType - Misc */
     , (451605118,   5,          1) /* EncumbranceVal */
     , (451605118,   8,          1) /* Mass */
     , (451605118,   9,          0) /* ValidLocations - None */
     , (451605118,  16,          1) /* ItemUseable - No */
     , (451605118,  19,          1) /* Value */
     , (451605118,  44,        1080) /* Damage */
     , (451605118,  45,          8) /* DamageType - Cold */
     , (451605118,  93,         12) /* PhysicsState - Ethereal, ReportCollisions */
     , (451605118, 119,          0) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451605118,   1, True ) /* Stuck */
     , (451605118,  11, False) /* IgnoreCollisions */
     , (451605118,  12, True ) /* ReportCollisions */
     , (451605118,  13, True ) /* Ethereal */
     , (451605118,  14, False) /* GravityStatus */
     , (451605118,  18, True ) /* Visibility */
     , (451605118,  24, True ) /* UiHidden */
     , (451605118,  55, True ) /* IsHot */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451605118,  22,     0.9) /* DamageVariance */
     , (451605118,  39,       1) /* DefaultScale */
     , (451605118, 105,     180) /* HotspotCycleTime */
     , (451605118, 106,     0.4) /* HotspotCycleTimeVariance */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451605118,   1, 'Chilly Air Level 3') /* Name */
     , (451605118,  17, 'The frigid air chills you for %i damage!') /* ActivationTalk */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451605118,   1, 0x02000639) /* Setup */
     , (451605118,   8, 0x06001049) /* Icon */;

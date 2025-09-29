DELETE FROM `weenie` WHERE `class_Id` = 514108530;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (514108530, 'ace514108530-dchotspot', 13, '2021-11-17 16:56:08') /* HotSpot */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (514108530,   1,        128) /* ItemType - Misc */
     , (514108530,   5,          0) /* EncumbranceVal */
	 , (514108530,   8,          1) /* Mass */
     , (514108530,   9,          0) /* ValidLocations - None */
     , (514108530,  16,          1) /* ItemUseable - No */
     , (514108530,  19,          0) /* Value */
     , (514108530,  44,          0) /* Damage */
     , (514108530,  45,        128) /* DamageType - Health */
     , (514108530,  93,       1036) /* PhysicsState - Ethereal, ReportCollisions, Gravity */
     , (514108530, 119,          0) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (514108530,   1, True ) /* Stuck */
     , (514108530,  11, False) /* IgnoreCollisions */
     , (514108530,  12, True ) /* ReportCollisions */
     , (514108530,  13, True ) /* Ethereal */
     , (514108530,  14, True) /* GravityStatus */
     , (514108530,  24, True ) /* UiHidden */
     , (514108530,  55, False ) /* IsHot */
     , (514108530,  57, False) /* AffectsAis */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (514108530,  22,       0) /* DamageVariance */
     , (514108530,  39,     3.0) /* DefaultScale */
     , (514108530, 105,     999) /* HotspotCycleTime */
     , (514108530, 106,       0) /* HotspotCycleTimeVariance */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (514108530,   1, 'Dungeon Control Point') /* Name */
     , (514108530,  16, 'Step within to claim dominion over the dungeon, but beware! Power over the dungeon comes at the price of your own mortality, offered one breath at a time to maintain your dominion.  The longer you remain, the more of yourself becomes part of these very dungeon walls until you can no longer tell whether you control the dungeon, or the dungeon controls what remains of you.') /* LongDesc */;
	 
INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (514108530,   1, 0x0200102F) /* Setup */
     , (514108530,   3, 0x20000052) /* SoundTable */
     , (514108530,   8, 0x06001049) /* Icon */;
DELETE FROM `weenie` WHERE `class_Id` = 490233;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490233, 'Dragon''s Den Dungeon Switch', 26, '2005-02-09 10:00:00') /* Switch */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490233,   1,        128) /* ItemType - Misc */
     , (490233,   5,       6660) /* EncumbranceVal */
     , (490233,   8,        200) /* Mass */
     , (490233,   9,          0) /* ValidLocations - None */
     , (490233,  16,         48) /* ItemUseable - ViewedRemote */
     , (490233,  19,          0) /* Value */
     , (490233,  81,          5) /* MaxGeneratedObjects */
     , (490233,  82,          0) /* InitGeneratedObjects */
     , (490233,  83,      65552) /* ActivationResponse - Talk, Generate */
     , (490233,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490233, 119,          1) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490233,   1, True ) /* Stuck */
     , (490233,  11, True ) /* IgnoreCollisions */
     , (490233,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490233,  41,       0) /* RegenerationInterval */
     , (490233,  43,     4.5) /* GeneratorRadius */
     , (490233,  54,     250) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490233,   1, 'Dragon''s Den Dungeon Switch') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490233,   1, 0x020018C0) /* Setup */
     , (490233,   2, 0x09000172) /* MotionTable */
     , (490233,   3, 0x20000014) /* SoundTable */
     , (490233,   8, 0x0600106B) /* Icon */;

INSERT INTO `weenie_properties_i_i_d` (`object_Id`, `type`, `value`)
VALUES (490233,  16, 0x00000000) /* ActivationTarget */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490233, -1, 490234, 1, 1, 1, 1, 4, 0, 0, 0, 0xF8640009, 35.943977, 21.914394,   36.817196, 0.659072, 0, 0,  0.752079) /* Generate Shoushi Combat Arena (452000)  Location to (re)Generate: Static */;


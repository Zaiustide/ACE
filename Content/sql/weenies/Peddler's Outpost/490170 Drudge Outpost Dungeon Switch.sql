DELETE FROM `weenie` WHERE `class_Id` = 490170;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490170, 'Drudge Outpost Dungeon Switch', 26, '2005-02-09 10:00:00') /* Switch */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490170,   1,        128) /* ItemType - Misc */
     , (490170,   5,       6660) /* EncumbranceVal */
     , (490170,   8,        200) /* Mass */
     , (490170,   9,          0) /* ValidLocations - None */
     , (490170,  16,         48) /* ItemUseable - ViewedRemote */
     , (490170,  19,          0) /* Value */
     , (490170,  81,          5) /* MaxGeneratedObjects */
     , (490170,  82,          0) /* InitGeneratedObjects */
     , (490170,  83,      65552) /* ActivationResponse - Talk, Generate */
     , (490170,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490170, 119,          1) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490170,   1, True ) /* Stuck */
     , (490170,  11, True ) /* IgnoreCollisions */
     , (490170,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490170,  41,       0) /* RegenerationInterval */
     , (490170,  43,     4.5) /* GeneratorRadius */
     , (490170,  54,     250) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490170,   1, 'Drudge Outpost Dungeon Switch') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490170,   1, 0x020018C0) /* Setup */
     , (490170,   2, 0x09000172) /* MotionTable */
     , (490170,   3, 0x20000014) /* SoundTable */
     , (490170,   8, 0x0600106B) /* Icon */;

INSERT INTO `weenie_properties_i_i_d` (`object_Id`, `type`, `value`)
VALUES (490170,  16, 0x00000000) /* ActivationTarget */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490170, -1, 490171, 1, 1, 1, 1, 4, 0, 0, 0, 0xF6630016, 64.282104, 124.561539,  0.005000, -0.844847, 0, 0,  0.535008) /* Generate Shoushi Combat Arena (452000)  Location to (re)Generate: Static */;


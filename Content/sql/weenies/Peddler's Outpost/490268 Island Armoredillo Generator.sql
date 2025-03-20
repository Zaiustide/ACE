DELETE FROM `weenie` WHERE `class_Id` = 490268;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490268, 'ace490268-islandarmedillogenerator', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490268,  81,          3) /* MaxGeneratedObjects */
     , (490268,  82,          3) /* InitGeneratedObjects */
     , (490268,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490268,   1, True ) /* Stuck */
     , (490268,  11, True ) /* IgnoreCollisions */
     , (490268,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490268,  41,     180) /* RegenerationInterval */
     , (490268,  43,       10) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490268,   1, 'Venomous Moar Generator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490268,   1, 0x0200026B) /* Setup */
     , (490268,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490268, -1, 490267, 1800, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Blighted Coral Golem (40153) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (490268, -1, 490267, 1800, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Blighted Coral Golem (40153) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (490268, -1, 490267, 1800, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Blighted Coral Golem (40153) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;

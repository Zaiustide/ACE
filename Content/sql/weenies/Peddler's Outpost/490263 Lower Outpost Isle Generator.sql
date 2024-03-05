DELETE FROM `weenie` WHERE `class_Id` = 490263;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490263, 'ace490263-outpostislandlowergenerator', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490263,  81,          1) /* MaxGeneratedObjects */
     , (490263,  82,          1) /* InitGeneratedObjects */
     , (490263,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490263,   1, True ) /* Stuck */
     , (490263,  11, True ) /* IgnoreCollisions */
     , (490263,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490263,  41,     180) /* RegenerationInterval */
     , (490263,  43,      18) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490263,   1, 'Lower Outpost Isle Generator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490263,   1, 0x0200026B) /* Setup */
     , (490263,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490263, 0.25, 490264, 300, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Blighted Coral Golem Generator (70080) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (490263, 0.5, 490265, 300, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate   Depraved Mukkir Generator (70335) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (490263, 0.75, 490266, 300, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate  Depraved Shadow Generator (70332) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (490263, 0.95, 490268, 300, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Horrid Remoran Generator Generator (70083) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (490263, 1, 490269, 300, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Listris Sleech Generator Generator (70334) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;

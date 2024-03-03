DELETE FROM `weenie` WHERE `class_Id` = 490228;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490228, 'ace490228-Secret Cave Entrance Generator', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490228,  66,          1) /* CheckpointStatus */
     , (490228,  81,          1) /* MaxGeneratedObjects */
     , (490228,  82,          1) /* InitGeneratedObjects */
     , (490228,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490228, 142,          3) /* GeneratorTimeType - Event */
     , (490228, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490228,   1, True ) /* Stuck */
     , (490228,  11, True ) /* IgnoreCollisions */
     , (490228,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490228,  41,       0) /* RegenerationInterval */
     , (490228,  43,       0) /* GeneratorRadius */
     , (490228, 121,       0) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490228,   1, 'Secret Cave Entrance Generator') /* Name */
     , (490228,  34, 'CaveExit') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490228,   1, 0x0200026B) /* Setup */
     , (490228,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490228, -1, 490229, 0, 1, 1, 1, 4, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Place Holder Object (3666) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;

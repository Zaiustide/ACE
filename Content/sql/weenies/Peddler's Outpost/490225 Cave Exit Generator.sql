DELETE FROM `weenie` WHERE `class_Id` = 490225;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490225, 'ace490225-CaveExitgenerator', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490225,  66,          1) /* CheckpointStatus */
     , (490225,  81,          1) /* MaxGeneratedObjects */
     , (490225,  82,          1) /* InitGeneratedObjects */
     , (490225,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490225, 142,          3) /* GeneratorTimeType - Event */
     , (490225, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490225,   1, True ) /* Stuck */
     , (490225,  11, True ) /* IgnoreCollisions */
     , (490225,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490225,  41,       0) /* RegenerationInterval */
     , (490225,  43,       0) /* GeneratorRadius */
     , (490225, 121,       0) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490225,   1, 'Cave Exit Generator') /* Name */
     , (490225,  34, 'CaveExit') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490225,   1, 0x0200026B) /* Setup */
     , (490225,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490225, -1, 490226, 0, 1, 1, 1, 4, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Place Holder Object (3666) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;

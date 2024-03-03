DELETE FROM `weenie` WHERE `class_Id` = 490231;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490231, 'CaveExitStopgapGen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490231,  81,          1) /* MaxGeneratedObjects */
     , (490231,  82,          1) /* InitGeneratedObjects */
     , (490231,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490231, 142,          3) /* GeneratorTimeType - Event */
     , (490231, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490231,   1, True ) /* Stuck */
     , (490231,  11, True ) /* IgnoreCollisions */
     , (490231,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490231,  41,      60) /* RegenerationInterval */
     , (490231,  43,       0) /* GeneratorRadius */
     , (490231, 121,      2) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490231,   1, 'Cave Exit Stopgap Gen') /* Name */
     , (490231,  34, 'CaveExitStopgapGen') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490231,   1, 0x0200026B) /* Setup */
     , (490231,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490231, 1, 490232, 1, 1, 1, 1, 4, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Aerfalle's Keep Stopgap! (9275) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;

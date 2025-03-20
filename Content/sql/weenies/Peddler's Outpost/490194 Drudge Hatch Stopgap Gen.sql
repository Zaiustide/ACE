DELETE FROM `weenie` WHERE `class_Id` = 490194;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490194, 'DrudgeHatchstopgapgen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490194,  81,          1) /* MaxGeneratedObjects */
     , (490194,  82,          1) /* InitGeneratedObjects */
     , (490194,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490194, 142,          3) /* GeneratorTimeType - Event */
     , (490194, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490194,   1, True ) /* Stuck */
     , (490194,  11, True ) /* IgnoreCollisions */
     , (490194,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490194,  41,      120) /* RegenerationInterval */
     , (490194,  43,       0) /* GeneratorRadius */
     , (490194, 121,      2) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490194,   1, 'Drudge Hatch Stopgap Gen') /* Name */
     , (490194,  34, 'DrudgeHatchStopgapGen') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490194,   1, 0x0200026B) /* Setup */
     , (490194,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490194, 1, 490193, 1, 1, 1, 1, 4, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Aerfalle's Keep Stopgap! (9275) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;

DELETE FROM `weenie` WHERE `class_Id` = 490092;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490092, 'ace490092-aerbaxlootgen', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490092,  81,          33) /* MaxGeneratedObjects */
     , (490092,  82,          33) /* InitGeneratedObjects */
     , (490092,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490092, 103,          2) /* GeneratorDestructionType - Destroy */
     , (490092, 145,          2) /* GeneratorEndDestructionType - Destroy */
     , (490092, 267,        180) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490092,   1, True ) /* Stuck */
     , (490092,  11, True ) /* IgnoreCollisions */
     , (490092,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490092,  41,      1000) /* RegenerationInterval */
     , (490092,  43,      30) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490092,   1, 'Aerbax Loot Gen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490092,   1, 0x0200026B) /* Setup */
     , (490092,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490092, -1, 510000, 0, 14, 14, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate A Box (x32 up to max of 32) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
, (490092, -1, 480608, 0, 14, 14, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Darkbeat Key (51578) (x9 up to max of 9) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
;
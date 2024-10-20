DELETE FROM `weenie` WHERE `class_Id` = 49009200;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (49009200, 'ace49009200-aerbaxlootgen', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (49009200,  81,          33) /* MaxGeneratedObjects */
     , (49009200,  82,          33) /* InitGeneratedObjects */
     , (49009200,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (49009200, 103,          2) /* GeneratorDestructionType - Destroy */
     , (49009200, 145,          2) /* GeneratorEndDestructionType - Destroy */
     , (49009200, 267,        180) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (49009200,   1, True ) /* Stuck */
     , (49009200,  11, True ) /* IgnoreCollisions */
     , (49009200,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (49009200,  41,      1000) /* RegenerationInterval */
     , (49009200,  43,      30) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (49009200,   1, 'Aerbax Loot Gen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (49009200,   1, 0x0200026B) /* Setup */
     , (49009200,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (49009200, -1, 510000, 0, 14, 14, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate A Box (x14 up to max of 14) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (49009200, -1, 480608, 0, 14, 14, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Darkbeat Key (51578) (x14 up to max of 14) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
	 , (49009200, -1, 490364, 0, 5, 5, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate 490364 Hera''s Vault Key  (x5 up to max of 5)- Regenerate upon Destruction - Location to (re)Generate: Scatter */
;
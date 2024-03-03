DELETE FROM `weenie` WHERE `class_Id` = 490258;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490258, 'trap-summondrudgesstronghold', 24, '2005-02-09 10:00:00') /* PressurePlate */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490258,   1,        128) /* ItemType - Misc */
     , (490258,  16,          1) /* ItemUseable - No */
     , (490258,  81,          5) /* MaxGeneratedObjects */
     , (490258,  82,          0) /* InitGeneratedObjects */
     , (490258,  83,      65552) /* ActivationResponse - Talk, Generate */
     , (490258,  93,          8) /* PhysicsState - ReportCollisions */
     , (490258, 119,          1) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490258,   1, True ) /* Stuck */
     , (490258,  11, False) /* IgnoreCollisions */
     , (490258,  12, True ) /* ReportCollisions */
     , (490258,  13, False) /* Ethereal */
     , (490258,  14, False) /* GravityStatus */
     , (490258,  18, False) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490258,  41,       0) /* RegenerationInterval */
     , (490258,  43,       5) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490258,   1, 'Pile of Rocks') /* Name */
     , (490258,  17, 'Disturbing the rocks has alerted the guardians to your presence.') /* ActivationTalk */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490258,   1, 0x02000FA2) /* Setup */
     , (490258,   2, 0x09000134) /* MotionTable */
     , (490258,   8, 0x06002CEE) /* Icon */
     , (490258,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_i_i_d` (`object_Id`, `type`, `value`)
VALUES (490258,  16, 0x00000000) /* ActivationTarget */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490258, -1, 490173, 600, 1, 1, 1, 4, -1, 0, 0, 0, -0.1, -0.1, 0, -0.636078, 0, 0, -0.771625) /* Generate Drudge Seraph Mystic (25563) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */
     , (490258, -1, 490173, 600, 1, 1, 1, 4, -1, 0, 0, 0, -0.1, -0.1, 0, -0.636078, 0, 0, -0.771625) /* Generate Drudge Seraph Mystic (25563) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */
     , (490258, -1, 490173, 600, 1, 1, 1, 4, -1, 0, 0, 0, -0.1, -0.1, 0, -0.636078, 0, 0, -0.771625) /* Generate Drudge Seraph (22899) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;

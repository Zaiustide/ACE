DELETE FROM `weenie` WHERE `class_Id` = 490356;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490356, 'ace490356-Hera''s Vault', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490356,   1,        512) /* ItemType - Container */
     , (490356,   5,       9000) /* EncumbranceVal */
     , (490356,   6,         -1) /* ItemsCapacity */
     , (490356,   7,         -1) /* ContainersCapacity */
     , (490356,   8,       3000) /* Mass */
     , (490356,  16,         48) /* ItemUseable - ViewedRemote */
     , (490356,  19,       2500) /* Value */
     , (490356,  38,       9999) /* ResistLockpick */
     , (490356,  81,          3) /* MaxGeneratedObjects */
     , (490356,  82,          3) /* InitGeneratedObjects */
     , (490356,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (490356,  96,        500) /* EncumbranceCapacity */
     , (490356, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490356,   1, True ) /* Stuck */
     , (490356,   2, False) /* Open */
     , (490356,   3, True ) /* Locked */
     , (490356,  12, True ) /* ReportCollisions */
     , (490356,  13, False) /* Ethereal */
     , (490356,  33, False) /* ResetMessagePending */
     , (490356,  34, False) /* DefaultOpen */
     , (490356,  35, True ) /* DefaultLocked */
     , (490356,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490356,  39,       2) /* DefaultScale */
     , (490356,  41,      60) /* RegenerationInterval */
     , (490356,  43,       1) /* GeneratorRadius */
     , (490356,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490356,   1, 'Hera''s Vault') /* Name */
     , (490356,  12, 'heravault') /* LockCode */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490356,   1, 0x02001268) /* Setup */
     , (490356,   2, 0x090001B3) /* MotionTable */
     , (490356,   3, 0x20000021) /* SoundTable */
     , (490356,   8, 0x06006208) /* Icon */
     , (490356,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490356, -1, 10003, 1, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate RANDOMLY GENERATED TREASURE from Loot Tier 8 from Death Treasure Table id: 10000 (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */;

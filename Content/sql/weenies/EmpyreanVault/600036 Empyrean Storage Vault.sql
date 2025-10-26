DELETE FROM `weenie` WHERE `class_Id` = 600036;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600036, 'chestskelekeychest', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600036,   1,        512) /* ItemType - Container */
     , (600036,   5,       5000) /* EncumbranceVal */
	 , (600036,   3,         14) /* PaletteTemplate - Red */
     , (600036,   6,        120) /* ItemsCapacity */
     , (600036,   7,         10) /* ContainersCapacity */
     , (600036,  16,         48) /* ItemUseable - ViewedRemote */
     , (600036,  19,          0) /* Value */
     , (600036,  38,       9999) /* ResistLockpick */
     , (600036,  81,          6) /* MaxGeneratedObjects */
     , (600036,  82,          6) /* InitGeneratedObjects */
     , (600036,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (600036, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600036,   1, True ) /* Stuck */
     , (600036,   2, False) /* Open */
     , (600036,   3, True ) /* Locked */
     , (600036,  34, False) /* DefaultOpen */
     , (600036,  35, True ) /* DefaultLocked */
     , (600036,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600036,  39,       3) /* DefaultScale */
	 , (600036,  11,     180) /* ResetInterval */
     , (600036,  43,       1) /* GeneratorRadius */
     , (600036,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600036,   1, 'Empyrean Storage Vault') /* Name */
     , (600036,  12, 'skelekeychest') /* LockCode */
     , (600036,  16, 'A Large Empyrean Storage Vault. The lock looks almost impossible to pick!') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600036,   1, 0x0200109D) /* Setup */
     , (600036,   2, 0x09000004) /* MotionTable */
     , (600036,   3, 0x20000021) /* SoundTable */
     , (600036,   6, 0x040010D5) /* PaletteBase */
     , (600036,   7, 0x100002C0) /* ClothingBase */
     , (600036,   8, 0x06003324) /* Icon */
     , (600036,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (600036, -1, 10005, 1, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate RANDOMLY GENERATED TREASURE from Loot Tier 8 from Death Treasure Table id: 10000 (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
      , (600036, -1, 600040, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Empyrean Jewelry Box (600040) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
      , (600036, -1, 600041, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Empyrean Coin Purse (600041) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
      , (600036, -1, 600042, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Empyrean Sealed Documents (600042) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
	  , (600036, -1, 600043, 0, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Empyrean Backpack (600043) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */;
    
	
	
	
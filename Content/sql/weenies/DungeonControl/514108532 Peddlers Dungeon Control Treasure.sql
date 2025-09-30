DELETE FROM `weenie` WHERE `class_Id` = 514108532;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (514108532, 'ace514108532-peddlersdctreasure', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (514108532,   1,        512) /* ItemType - Container */
     , (514108532,   5,       9000) /* EncumbranceVal */
     , (514108532,   6,         -1) /* ItemsCapacity */
     , (514108532,   7,         -1) /* ContainersCapacity */
     , (514108532,   8,       3000) /* Mass */
     , (514108532,  16,         48) /* ItemUseable - ViewedRemote */
     , (514108532,  19,       2500) /* Value */
     , (514108532,  38,       9999) /* ResistLockpick */
     , (514108532,  81,          3) /* MaxGeneratedObjects */
     , (514108532,  82,          3) /* InitGeneratedObjects */
     , (514108532,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (514108532,  96,        500) /* EncumbranceCapacity */
     , (514108532, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (514108532,   1,  True) /* Stuck */
     , (514108532,   2, False) /* Open */
     , (514108532,   3, False) /* Locked */
     , (514108532,  12,  True) /* ReportCollisions */
     , (514108532,  13,  True) /* Ethereal */
     , (514108532,  33, False) /* ResetMessagePending */
     , (514108532,  34, False) /* DefaultOpen */
     , (514108532,  35, False) /* DefaultLocked */
     , (514108532,  86, False) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (514108532,  11, 9999999999) /* ResetInterval */
     , (514108532,  39,          2) /* DefaultScale */
     , (514108532,  41, 9999999999) /* RegenerationInterval */
     , (514108532,  43,          1) /* GeneratorRadius */
     , (514108532,  54,          1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (514108532,   1, 'Dungeon Cache') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (514108532,   1, 0x0200007C) /* Setup */
     , (514108532,   2, 0x090001B3) /* MotionTable */
     , (514108532,   3, 0x20000021) /* SoundTable */
     , (514108532,   8, 0x06006208) /* Icon */
     , (514108532,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (514108532, -1, 10003, 1, 1, 1, 1, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate RANDOMLY GENERATED TREASURE from Loot Tier 8 from Death Treasure Table id: 10000 (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
	 , (514108532, 0.17, 490326, 1, 1, 2, 1, 8, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Essence of Power (490326) (x1 up to max of 5) - Regenerate upon PickUp - Location to (re)Generate: Contain */
	 , (514108532, 0.20, 52797, 1, 1, 1, 1, 8, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Gauntlet Coin (52797) (x1 up to max of 5) - Regenerate upon PickUp - Location to (re)Generate: Contain */
	 , (514108532, 0.24, 38726, 1, 1, 5, 1, 8, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Black Market Gem of Dispelling (38726) (x1 up to max of 5) - Regenerate upon PickUp - Location to (re)Generate: Contain */
	 , (514108532, 0.25, 510000, 1, 1, 1, 1, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate A box (510000) (x1 up to max of 4) - Regenerate upon PickUp - Location to (re)Generate: Contain */
	 , (514108532, 0.3, 52968, 1, 1, 100, 1, 8, 100, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Infused Amber Shard - Regenerate upon PickUp - Location to (re)Generate: Contain */
	 , (514108532, 0.325, 52969, 1, 1, 20, 1, 8, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Corrupted Amber Shard (52969) (x1 up to max of 4) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (514108532, 0.375, 20630, 1, 1, 25, 1, 8, 25, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Trade Note (250,000) (20630) (x1 up to max of 4) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (514108532, 0.40, 490321, 1, 1, 1, 1, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Luminance Exchange Token (490321) (x1 up to max of 4) - Regenerate upon PickUp - Location to (re)Generate: Contain */
	 , (514108532, 0.425, 480634, 1, 1, 1, 1, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Duped Gem of Greater Luminance (480634) (x1 up to max of 4) - Regenerate upon PickUp - Location to (re)Generate: Contain */
	 , (514108532, 0.5, 490364, 1, 1, 1, 1, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Hera Vault Key (490364) (x1 up to max of 4) - Regenerate upon PickUp - Location to (re)Generate: Contain */
	 , (514108532, 0.65, 1000002, 1, 1, 20, 1, 8, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate PK Trophy (1000002) (x1 up to max of 4) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (514108532, 0.80, 43901, 1, 1, 50, 1, 8, 50, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Promissory Note (43901) (x1 up to max of 5) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (514108532, 0.85, 1000003, 1, 1, 5, 1, 8, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Phial of Bloody Tears (1000003) - Regenerate upon PickUp - Location to (re)Generate: Contain */
	 , (514108532, 0.90, 480611, 1, 1, 1, 1, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Experience Certificate (480611) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
	 , (514108532, 0.94, 490070, 1, 1, 2, 1, 8, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Water of Enlightenment (490070) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (514108532, 0.995, 480612, 1, 1, 1, 1, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Darkbeat's Golem Drawing (480612) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Contain */
	 , (514108532, 1, 30258, 1, 1, 1, 1, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Shimmering Skeleton Key (30258) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Contain */;

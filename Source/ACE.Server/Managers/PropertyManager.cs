using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Timers;

using log4net;

using ACE.Database;

namespace ACE.Server.Managers
{
    public static class PropertyManager
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        // caching internally to the server
        private static readonly ConcurrentDictionary<string, ConfigurationEntry<bool>> CachedBooleanSettings = new ConcurrentDictionary<string, ConfigurationEntry<bool>>();
        private static readonly ConcurrentDictionary<string, ConfigurationEntry<long>> CachedLongSettings = new ConcurrentDictionary<string, ConfigurationEntry<long>>();
        private static readonly ConcurrentDictionary<string, ConfigurationEntry<double>> CachedDoubleSettings = new ConcurrentDictionary<string, ConfigurationEntry<double>>();
        private static readonly ConcurrentDictionary<string, ConfigurationEntry<string>> CachedStringSettings = new ConcurrentDictionary<string, ConfigurationEntry<string>>();

        private static Timer _workerThread;

        /// <summary>
        /// Initializes the PropertyManager.
        /// Run this only once per server instance.
        /// </summary>
        /// <param name="loadDefaultValues">Should we use the DefaultPropertyManager to load the default properties for keys?</param>
        public static void Initialize(bool loadDefaultValues = true)
        {
            if (loadDefaultValues)
                DefaultPropertyManager.LoadDefaultProperties();

            LoadPropertiesFromDB();

            if (Program.IsRunningInContainer && !GetString("content_folder").Equals("/ace/Content"))
                ModifyString("content_folder", "/ace/Content");

            _workerThread = new Timer(300000);
            _workerThread.Elapsed += DoWork;
            _workerThread.AutoReset = true;
            _workerThread.Start();
        }


        /// <summary>
        /// Loads the variables from the database directly into the cache.
        /// </summary>
        private static void LoadPropertiesFromDB()
        {
            foreach (var i in DatabaseManager.ShardConfig.GetAllBools())
                CachedBooleanSettings[i.Key] = new ConfigurationEntry<bool>(false, i.Value, i.Description);

            foreach (var i in DatabaseManager.ShardConfig.GetAllLongs())
                CachedLongSettings[i.Key] = new ConfigurationEntry<long>(false, i.Value, i.Description);

            foreach (var i in DatabaseManager.ShardConfig.GetAllDoubles())
                CachedDoubleSettings[i.Key] = new ConfigurationEntry<double>(false, i.Value, i.Description);

            foreach (var i in DatabaseManager.ShardConfig.GetAllStrings())
                CachedStringSettings[i.Key] = new ConfigurationEntry<string>(false, i.Value, i.Description);
        }

        /// <summary>
        /// Resyncs the variables with the database manually.
        /// Disables the timer so that the elapsed event cannot run during the update operation.
        /// </summary>
        public static void ResyncVariables()
        {
            _workerThread.Stop();

            DoWork(null, null);

            _workerThread.Start();
        }

        /// <summary>
        /// Stops updating the cached store from the database.
        /// </summary>
        public static void StopUpdating()
        {
            if (_workerThread != null)
                _workerThread.Stop();
        }


        /// <summary>
        /// Retrieves a boolean property from the cache or database
        /// </summary>
        /// <param name="key">The string key for the property</param>
        /// <param name="fallback">The value to return if the property cannot be found.</param>
        /// <param name="cacheFallback">Whether or not the fallback property should be cached.</param>
        /// <returns>A boolean value representing the property</returns>
        public static Property<bool> GetBool(string key, bool fallback = false, bool cacheFallback = true)
        {
            // first, check the cache. If the key exists in the cache, grab it regardless of its modified value
            // then, check the database. if the key exists in the database, grab it and cache it
            // finally, set it to a default of false.
            if (CachedBooleanSettings.ContainsKey(key))
                return new Property<bool>(CachedBooleanSettings[key].Item, CachedBooleanSettings[key].Description);

            var dbValue = DatabaseManager.ShardConfig.GetBool(key);

            bool useFallback = dbValue?.Value == null;

            var value = dbValue?.Value ?? fallback;

            if (!useFallback || cacheFallback)
                CachedBooleanSettings[key] = new ConfigurationEntry<bool>(useFallback, value, dbValue?.Description);

            return new Property<bool>(value, dbValue?.Description);
        }

        /// <summary>
        /// Modifies a boolean value in the cache and marks it for being synced on the next cycle.
        /// </summary>
        /// <param name="key">The string key for the property</param>
        /// <param name="newVal">The value to replace the old value with</param>
        /// <returns>true if the property was modified, false if no property exists with the given key</returns>
        public static bool ModifyBool(string key, bool newVal)
        {
            if (!DefaultPropertyManager.DefaultBooleanProperties.ContainsKey(key))
                return false;

            if (CachedBooleanSettings.ContainsKey(key))
                CachedBooleanSettings[key].Modify(newVal);
            else
                CachedBooleanSettings[key] = new ConfigurationEntry<bool>(true, newVal, DefaultPropertyManager.DefaultBooleanProperties[key].Description);

            return true;
        }

        public static void ModifyBoolDescription(string key, string description)
        {
            if (CachedBooleanSettings.ContainsKey(key))
                CachedBooleanSettings[key].ModifyDescription(description);
            else
                log.Warn($"Attempted to modify {key} which did not exist in the BOOL cache.");
        }

        /// <summary>
        /// Retreives an integer property from the cache or database
        /// </summary>
        /// <param name="key">The string key for the property</param>
        /// <param name="fallback">The value to return if the property cannot be found.</param>
        /// <param name="cacheFallback">Whether or not the fallback property should be cached</param>
        /// <returns>An integer value representing the property</returns>
        public static Property<long> GetLong(string key, long fallback = 0, bool cacheFallback = true)
        {
            if (CachedLongSettings.ContainsKey(key))
                return new Property<long>(CachedLongSettings[key].Item, CachedLongSettings[key].Description);

            var dbValue = DatabaseManager.ShardConfig.GetLong(key);

            bool useFallback = dbValue?.Value == null;

            var value = dbValue?.Value ?? fallback;

            if (!useFallback || cacheFallback)
                CachedLongSettings[key] = new ConfigurationEntry<long>(useFallback, value, dbValue?.Description);

            return new Property<long>(value, dbValue?.Description);
        }

        /// <summary>
        /// Modifies an integer value in the cache and marks it for being synced on the next cycle.
        /// </summary>
        /// <param name="key">The string key for the property</param>
        /// <param name="newVal">The value to replace the old value with</param>
        /// <returns>true if the property was modified, false if no property exists with the given key</returns>
        public static bool ModifyLong(string key, long newVal)
        {
            if (!DefaultPropertyManager.DefaultLongProperties.ContainsKey(key))
                return false;

            if (CachedLongSettings.ContainsKey(key))
                CachedLongSettings[key].Modify(newVal);
            else
                CachedLongSettings[key] = new ConfigurationEntry<long>(true, newVal, DefaultPropertyManager.DefaultLongProperties[key].Description);
            return true;
        }

        public static void ModifyLongDescription(string key, string description)
        {
            if (CachedLongSettings.ContainsKey(key))
                CachedLongSettings[key].ModifyDescription(description);
            else
                log.Warn($"Attempted to modify {key} which did not exist in the LONG cache.");
        }

        /// <summary>
        /// Retrieves a float property from the cache or database
        /// </summary>
        /// <param name="key">The string key for the property</param>
        /// <param name="fallback">The value to return if the property cannot be found.</param>
        /// <param name="cacheFallback">Whether or not the fallpack property should be cached</param>
        /// <returns>A float value representing the property</returns>
        public static Property<double> GetDouble(string key, double fallback = 0.0f, bool cacheFallback = true)
        {
            if (CachedDoubleSettings.ContainsKey(key))
                return new Property<double>(CachedDoubleSettings[key].Item, CachedDoubleSettings[key].Description);

            var dbValue = DatabaseManager.ShardConfig.GetDouble(key);

            bool useFallback = dbValue?.Value == null;

            var value = dbValue?.Value ?? fallback;

            if (!useFallback || cacheFallback)
                CachedDoubleSettings[key] = new ConfigurationEntry<double>(useFallback, value, dbValue?.Description);

            return new Property<double>(value, dbValue?.Description);
        }

        /// <summary>
        /// Modifies a float value in the cache and marks it for being synced on the next cycle.
        /// </summary>
        /// <param name="key">The string key for the property</param>
        /// <param name="newVal">The value to replace the old value with</param>
        public static bool ModifyDouble(string key, double newVal, bool init = false)
        {
            if (!DefaultPropertyManager.DefaultDoubleProperties.ContainsKey(key))
                return false;
            if (CachedDoubleSettings.ContainsKey(key))
                CachedDoubleSettings[key].Modify(newVal);
            else
                CachedDoubleSettings[key] = new ConfigurationEntry<double>(true, newVal, DefaultPropertyManager.DefaultDoubleProperties[key].Description);

            if (!init)
            {
                switch (key)
                {
                    case "cantrip_drop_rate":
                        Factories.Tables.CantripChance.ApplyNumCantripsMod();
                        break;
                    case "minor_cantrip_drop_rate":
                    case "major_cantrip_drop_rate":
                    case "epic_cantrip_drop_rate":
                    case "legendary_cantrip_drop_rate":
                        Factories.Tables.CantripChance.ApplyCantripLevelsMod();
                        break;
                }
            }
            return true;
        }

        public static void ModifyDoubleDescription(string key, string description)
        {
            if (CachedDoubleSettings.ContainsKey(key))
                CachedDoubleSettings[key].ModifyDescription(description);
            else
                log.Warn($"Attempted to modify the description of {key} which did not exist in the DOUBLE cache.");
        }

        /// <summary>
        /// Retreives a string property from the cache or database
        /// </summary>
        /// <param name="key">The string key for the property</param>
        /// <param name="fallback">The value to return if the property cannot be found.</param>
        /// <param name="cacheFallback">Whether or not the fallback value will be cached.</param>
        /// <returns>A string value representing the property</returns>
        public static Property<string> GetString(string key, string fallback = "", bool cacheFallback = true)
        {
            if (CachedStringSettings.ContainsKey(key))
                return new Property<string>(CachedStringSettings[key].Item, CachedStringSettings[key].Description);

            var dbValue = DatabaseManager.ShardConfig.GetString(key);

            bool useFallback = dbValue?.Value == null;

            var value = dbValue?.Value ?? fallback;

            if (!useFallback || cacheFallback)
                CachedStringSettings[key] = new ConfigurationEntry<string>(useFallback, value, dbValue?.Description);

            return new Property<string>(value, dbValue?.Description);
        }

        /// <summary>
        /// Modifies a string value in the cache and marks it for being synced on the next cycle
        /// </summary>
        /// <param name="key">The string key for the property</param>
        /// <param name="newVal">The value to replace the old value with</param>
        /// <returns>true if the property was modified, false if no property exists with the given key</returns>
        public static bool ModifyString(string key, string newVal)
        {
            if (!DefaultPropertyManager.DefaultStringProperties.ContainsKey(key))
                return false;

            if (CachedStringSettings.ContainsKey(key))
                CachedStringSettings[key].Modify(newVal);
            else
                CachedStringSettings[key] = new ConfigurationEntry<string>(true, newVal, DefaultPropertyManager.DefaultStringProperties[key].Description);
            return true;
        }

        public static void ModifyStringDescription(string key, string description)
        {
            if (CachedStringSettings.ContainsKey(key))
                CachedStringSettings[key].ModifyDescription(description);
            else
                log.Warn($"Attempted to modify {key} which did not exist in the STRING cache.");
        }


        /// <summary>
        /// Writes all of the updated boolean values from the cache into the database.
        /// </summary>
        private static void WriteBoolToDB()
        {
            foreach (var i in CachedBooleanSettings.Where(r => r.Value.Modified))
            {
                // this probably should be upsert. This does 2 queries per modified datapoint.
                // perhaps run a transaction to queue all the queries at once.
                if (DatabaseManager.ShardConfig.BoolExists(i.Key))
                    DatabaseManager.ShardConfig.SaveBool(new Database.Models.Shard.ConfigPropertiesBoolean { Key = i.Key, Value = i.Value.Item, Description = i.Value.Description });
                else
                    DatabaseManager.ShardConfig.AddBool(i.Key, i.Value.Item, i.Value.Description);
            }
        }

        /// <summary>
        /// Writes all of the updated integer values from the cache into the database.
        /// </summary>
        private static void WriteLongToDB()
        {
            foreach (var i in CachedLongSettings.Where(r => r.Value.Modified))
            {
                // todo: see boolean section for caveat in this approach
                if (DatabaseManager.ShardConfig.LongExists(i.Key))
                    DatabaseManager.ShardConfig.SaveLong(new Database.Models.Shard.ConfigPropertiesLong { Key = i.Key, Value = i.Value.Item, Description = i.Value.Description });
                else
                    DatabaseManager.ShardConfig.AddLong(i.Key, i.Value.Item, i.Value.Description);
            }
        }

        /// <summary>
        /// Writes all of the updated float values from the cache into the database.
        /// </summary>
        private static void WriteDoubleToDB()
        {
            foreach (var i in CachedDoubleSettings.Where(r => r.Value.Modified))
            {
                // todo: see boolean section for caveat in this approach
                if (DatabaseManager.ShardConfig.DoubleExists(i.Key))
                    DatabaseManager.ShardConfig.SaveDouble(new Database.Models.Shard.ConfigPropertiesDouble { Key = i.Key, Value = i.Value.Item, Description = i.Value.Description });
                else
                    DatabaseManager.ShardConfig.AddDouble(i.Key, i.Value.Item, i.Value.Description);
            }
        }

        /// <summary>
        /// Writes all of the updated string values from the cache into the database.
        /// </summary>
        private static void WriteStringToDB()
        {
            foreach (var i in CachedStringSettings.Where(r => r.Value.Modified))
            {
                // todo: see boolean section for caveat in this approach
                if (DatabaseManager.ShardConfig.StringExists(i.Key))
                    DatabaseManager.ShardConfig.SaveString(new Database.Models.Shard.ConfigPropertiesString { Key = i.Key, Value = i.Value.Item, Description = i.Value.Description });
                else
                    DatabaseManager.ShardConfig.AddString(i.Key, i.Value.Item, i.Value.Description);
            }
        }

        private static void DoWork(Object source, ElapsedEventArgs e)
        {
            var startTime = DateTime.UtcNow;

            // first, check for variables updated on the server-side. Write those to the DB.
            // then, compare variables to DB and update from DB as necessary. (needs to minimize r/w)

            WriteBoolToDB();
            WriteLongToDB();
            WriteDoubleToDB();
            WriteStringToDB();

            // next, we need to fetch all of the variables from the DB and compare them quickly.
            LoadPropertiesFromDB();

            log.DebugFormat("PropertyManager DoWork took {0:N0} ms", (DateTime.UtcNow - startTime).TotalMilliseconds);
        }
        public static string ListProperties()
        {
            string props = "Boolean properties:\n";
            foreach (var item in DefaultPropertyManager.DefaultBooleanProperties)
                props += string.Format("\t{0}: {1} (current is {2}, default is {3})\n", item.Key, item.Value.Description, GetBool(item.Key).Item, item.Value.Item);

            props += "\nLong properties:\n";
            foreach (var item in DefaultPropertyManager.DefaultLongProperties)
                props += string.Format("\t{0}: {1} (current is {2}, default is {3})\n", item.Key, item.Value.Description, GetLong(item.Key).Item, item.Value.Item);

            props += "\nDouble properties:\n";
            foreach (var item in DefaultPropertyManager.DefaultDoubleProperties)
                props += string.Format("\t{0}: {1} (current is {2}, default is {3})\n", item.Key, item.Value.Description, GetDouble(item.Key).Item, item.Value.Item);

            props += "\nString properties:\n";
            foreach (var item in DefaultPropertyManager.DefaultStringProperties)
                props += string.Format("\t{0}: {1} (default is hidden)\n", item.Key, item.Value.Description);

            return props;
        }
    }

    public struct Property<T>
    {
        public Property(T item, string description) : this()
        {
            Item = item;
            Description = description;
        }

        public T Item { get; }
        public string Description { get; }
    }

    class ConfigurationEntry<T>
    {
        public bool Modified;
        public T Item;
        public string Description;

        public ConfigurationEntry(bool modified, T item)
        {
            Modified = modified;
            Item = item;
        }

        public ConfigurationEntry(bool modified, T item, string description)
        {
            Modified = modified;
            Item = item;
            Description = description;
        }

        public void Modify(T item)
        {
            Item = item;
            Modified = true;
        }

        public void ModifyDescription(string description)
        {
            Description = description;
            Modified = true;
        }

        public override string ToString()
        {
            return Item + " " + Modified;
        }
    }

    public static class DefaultPropertyManager
    {
        private static ReadOnlyDictionary<A,V> DictOf<A, V>()
        {
            return new ReadOnlyDictionary<A, V>(new Dictionary<A, V>());
        }

        private static ReadOnlyDictionary<A, V> DictOf<A, V>(params (A, V)[] pairs)
        {
            return new ReadOnlyDictionary<A, V>(pairs.ToDictionary
            (
                tup => tup.Item1,
                tup => tup.Item2
            ));
        }

        public static void LoadDefaultProperties()
        {
            // Place any default properties to load in here

            //bool
            foreach (var item in DefaultBooleanProperties)
                PropertyManager.ModifyBool(item.Key, item.Value.Item);

            //float
            foreach (var item in DefaultDoubleProperties)
                PropertyManager.ModifyDouble(item.Key, item.Value.Item, true);

            //int
            foreach (var item in DefaultLongProperties)
                PropertyManager.ModifyLong(item.Key, item.Value.Item);

            //string
            foreach (var item in DefaultStringProperties)
                PropertyManager.ModifyString(item.Key, item.Value.Item);
        }

        // ==================================================================================
        // To change these values for the server,
        // please use the /modifybool, /modifylong, /modifydouble, and /modifystring commands
        // ==================================================================================

        public static readonly ReadOnlyDictionary<string, Property<bool>> DefaultBooleanProperties =
            DictOf(
                ("account_login_boots_in_use", new Property<bool>(true, "if FALSE, oldest connection to account is not booted when new connection occurs")),
                ("advanced_combat_pets", new Property<bool>(false, "(non-retail function) If enabled, Combat Pets can cast spells")),
                ("advocate_fane_auto_bestow", new Property<bool>(false, "If enabled, Advocate Fane will automatically bestow new advocates to advocate_fane_auto_bestow_level")),
                ("aetheria_heal_color", new Property<bool>(false, "If enabled, changes the aetheria healing over time messages from the default retail red color to green")),
                ("allow_door_hold", new Property<bool>(true, "enables retail behavior where standing on a door while it is closing keeps the door as ethereal until it is free from collisions, effectively holding the door open for other players")),
                ("allow_fast_chug", new Property<bool>(true, "enables retail behavior where a player can consume food and drink faster than normal by breaking animation")),
                ("allow_jump_loot", new Property<bool>(true, "enables retail behavior where a player can quickly loot items while jumping, bypassing the 'crouch down' animation")),
                ("allow_negative_dispel_resist", new Property<bool>(true, "enables retail behavior where #-# negative dispels can be resisted")),
                ("allow_negative_rating_curve", new Property<bool>(true, "enables retail behavior where negative DRR from void dots didn't switch to the reverse rating formula, resulting in a possibly unintended curve that quickly ramps up as -rating goes down, eventually approaching infinity / divide by 0 for -100 rating. less than -100 rating would produce negative numbers.")),
                ("allow_pkl_bump", new Property<bool>(true, "enables retail behavior where /pkl checks for entry collisions, bumping the player position over if standing on another PKLite. This effectively enables /pkl door skipping from retail")),
                ("allow_summoning_killtask_multicredit", new Property<bool>(true, "enables retail behavior where a summoner can get multiple killtask credits from a monster")),
                ("assess_creature_mod", new Property<bool>(false, "(non-retail function) If enabled, re-enables former skill formula, when assess creature skill is not trained or spec'ed")),
                ("attribute_augmentation_safety_cap", new Property<bool>(true, "if TRUE players are not able to use attribute augmentations if the innate value of the target attribute is >= 96. All normal restrictions to these augmentations still apply.")),
                ("chat_disable_general", new Property<bool>(false, "disable general global chat channel")),
                ("chat_disable_lfg", new Property<bool>(false, "disable lfg global chat channel")),
                ("chat_disable_olthoi", new Property<bool>(false, "disable olthoi global chat channel")),
                ("chat_disable_roleplay", new Property<bool>(false, "disable roleplay global chat channel")),
                ("chat_disable_trade", new Property<bool>(false, "disable trade global chat channel")),
                ("chat_echo_only", new Property<bool>(false, "global chat returns to sender only")),
                ("chat_echo_reject", new Property<bool>(false, "global chat returns to sender on reject")),
                ("chat_inform_reject", new Property<bool>(true, "global chat informs sender on reason for reject")),
                ("chat_log_abuse", new Property<bool>(false, "log abuse chat")),
                ("chat_log_admin", new Property<bool>(false, "log admin chat")),
                ("chat_log_advocate", new Property<bool>(false, "log advocate chat")),
                ("chat_log_allegiance", new Property<bool>(false, "log allegiance chat")),
                ("chat_log_audit", new Property<bool>(true, "log audit chat")),
                ("chat_log_debug", new Property<bool>(false, "log debug chat")),
                ("chat_log_fellow", new Property<bool>(false, "log fellow chat")),
                ("chat_log_general", new Property<bool>(false, "log general chat")),
                ("chat_log_global", new Property<bool>(false, "log global broadcasts")),
                ("chat_log_help", new Property<bool>(false, "log help chat")),
                ("chat_log_lfg", new Property<bool>(false, "log LFG chat")),
                ("chat_log_olthoi", new Property<bool>(false, "log olthoi chat")),
                ("chat_log_qa", new Property<bool>(false, "log QA chat")),
                ("chat_log_roleplay", new Property<bool>(false, "log roleplay chat")),
                ("chat_log_sentinel", new Property<bool>(false, "log sentinel chat")),
                ("chat_log_society", new Property<bool>(false, "log society chat")),
                ("chat_log_trade", new Property<bool>(false, "log trade chat")),
                ("chat_log_townchans", new Property<bool>(false, "log advocate town chat")),
                ("chat_requires_account_15days", new Property<bool>(false, "global chat privileges requires accounts to be 15 days or older")),
                ("chess_enabled", new Property<bool>(true, "if FALSE then chess will be disabled")),
                ("use_cloak_proc_custom_scale", new Property<bool>(false, "If TRUE, the calculation for cloak procs will be based upon the values set by the server oeprator.")),
                ("client_movement_formula", new Property<bool>(false, "If enabled, server uses DoMotion/StopMotion self-client movement methods instead of apply_raw_movement")),
                ("container_opener_name", new Property<bool>(false, "If enabled, when a player tries to open a container that is already in use by someone else, replaces 'someone else' in the message with the actual name of the player")),
                ("corpse_decay_tick_logging", new Property<bool>(false, "If ENABLED then player corpse ticks will be logged")),
                ("corpse_destroy_pyreals", new Property<bool>(true, "If FALSE then pyreals will not be completely destroyed on player death")),
                ("craft_exact_msg", new Property<bool>(false, "If TRUE, and player has crafting chance of success dialog enabled, shows them an additional message in their chat window with exact %")),
                ("creature_name_check", new Property<bool>(true, "if enabled, creature names in world database restricts player names during character creation")),
                ("creatures_drop_createlist_wield", new Property<bool>(false, "If FALSE then Wielded items in CreateList will not drop. Retail defaulted to TRUE but there are currently data errors")),
                ("dispel_rares_pvp", new Property<bool>(false, "If true, disables rare gem buffs from being usable in PvP.")),
                ("equipmentsetid_enabled", new Property<bool>(true, "enable this to allow adding EquipmentSetIDs to loot armor")),                
                ("equipmentsetid_name_decoration", new Property<bool>(false, "enable this to add the EquipmentSet name to loot armor name")),
                ("fastbuff", new Property<bool>(true, "If TRUE, enables the fast buffing trick from retail.")),
                ("fellow_busy_no_recruit", new Property<bool>(true, "if FALSE, fellows can be recruited while they are busy, different from retail")),
                ("fellow_kt_killer", new Property<bool>(true, "if FALSE, fellowship kill tasks will share with the fellowship, even if the killer doesn't have the quest")),
                ("fellow_kt_landblock", new Property<bool>(false, "if TRUE, fellowship kill tasks will share with landblock range (192 distance radius, or entire dungeon)")),
                ("fellow_quest_bonus", new Property<bool>(false, "if TRUE, applies EvenShare formula to fellowship quest reward XP (300% max bonus, defaults to false in retail)")),
                ("fix_chest_missing_inventory_window", new Property<bool>(false, "Very non-standard fix. This fixes an acclient bug where unlocking a chest, and then quickly opening it before the client has received the Locked=false update from server can result in the chest opening, but with the chest inventory window not displaying. Bug has a higher chance of appearing with more network latency.")),
                ("gateway_ties_summonable", new Property<bool>(true, "if disabled, players cannot summon ties from gateways. defaults to enabled, as in retail")),
                ("gearknight_core_plating", new Property<bool>(true, "if disabled, Gear Knight players are not required to use core plating devices for armor and clothing. defaults to enabled, as in retail")),
                ("house_15day_account", new Property<bool>(true, "if disabled, houses can be purchased with accounts created less than 15 days old")),
                ("house_30day_cooldown", new Property<bool>(true, "if disabled, houses can be purchased without waiting 30 days between each purchase")),
                ("house_hook_limit", new Property<bool>(true, "if disabled, house hook limits are ignored")),
                ("house_hookgroup_limit", new Property<bool>(true, "if disabled, house hook group limits are ignored")),
                ("house_per_char", new Property<bool>(false, "if TRUE, allows 1 house per char instead of 1 house per account")),
                ("house_purchase_requirements", new Property<bool>(true, "if disabled, requirements to purchase/rent house are not checked")),
                ("house_rent_enabled", new Property<bool>(true, "If FALSE then rent is not required")),
                ("iou_trades", new Property<bool>(false, "(non-retail function) If enabled, IOUs can be traded for objects that are missing in DB but added/restored later on")),
                ("item_dispel", new Property<bool>(false, "if enabled, allows players to dispel items. defaults to end of retail, where item dispels could only target creatures")),
                ("legacy_loot_system", new Property<bool>(false, "use the previous iteration of the ace lootgen system")),
                ("lifestone_broadcast_death", new Property<bool>(true, "if true, player deaths are additionally broadcast to other players standing near the destination lifestone")),
                ("loot_quality_mod", new Property<bool>(true, "if FALSE then the loot quality modifier of a Death Treasure profile does not affect loot generation")),
                ("npc_hairstyle_fullrange", new Property<bool>(false, "if TRUE, allows generated creatures to use full range of hairstyles. Retail only allowed first nine (0-8) out of 51")),
                ("offline_xp_passup_limit", new Property<bool>(true, "if FALSE, allows unlimited xp to passup to offline characters in allegiances")),
                ("olthoi_play_enabled", new Property<bool>(false, "allows players to create and play as olthoi characters")),
                ("override_encounter_spawn_rates", new Property<bool>(false, "if enabled, landblock encounter spawns are overidden by double properties below.")),
                ("permit_corpse_all", new Property<bool>(false, "If TRUE, /permit grants permittees access to all corpses of the permitter. Defaults to FALSE as per retail, where /permit only grants access to 1 locked corpse")),
                ("persist_movement", new Property<bool>(false, "If TRUE, persists autonomous movements such as turns and sidesteps through non-autonomous server actions. Retail didn't appear to do this, but some players may prefer this.")),
                ("pet_stow_replace", new Property<bool>(false, "pet stowing for different pet devices becomes a stow and replace. defaults to retail value of false")),
                ("player_config_command", new Property<bool>(false, "If enabled, players can use /config to change their settings via text commands")),
                ("player_receive_immediate_save", new Property<bool>(false, "if enabled, when the player receives items from an NPC, they will be saved immediately")),
                ("pk_server", new Property<bool>(false, "set this to TRUE for darktide servers")),
                ("pk_server_safe_training_academy", new Property<bool>(false, "set this to TRUE to disable pk fighting in training academy and time to exit starter town safely")),
                ("pkl_server", new Property<bool>(false, "set this to TRUE for pink servers")),
                ("quest_info_enabled", new Property<bool>(false, "toggles the /myquests player command")),
                ("rares_real_time", new Property<bool>(true, "allow for second chance roll based on an rng seeded timestamp for a rare on rare eligible kills that do not generate a rare, rares_max_seconds_between defines maximum seconds before second chance kicks in")),
                ("rares_real_time_v2", new Property<bool>(false, "chances for a rare to be generated on rare eligible kills are modified by the last time one was found per each player, rares_max_days_between defines maximum days before guaranteed rare generation")),
                ("runrate_add_hooks", new Property<bool>(false, "if TRUE, adds some runrate hooks that were missing from retail (exhaustion done, raise skill/attribute")),
                ("reportbug_enabled", new Property<bool>(false, "toggles the /reportbug player command")),
                ("require_spell_comps", new Property<bool>(true, "if FALSE, spell components are no longer required to be in inventory to cast spells. defaults to enabled, as in retail")),
                ("safe_spell_comps", new Property<bool>(false, "if TRUE, disables spell component burning for everyone")),
                ("salvage_handle_overages", new Property<bool>(false, "in retail, if 2 salvage bags were combined beyond 100 structure, the overages would be lost")),
                ("show_ammo_buff", new Property<bool>(false, "shows active enchantments such as blood drinker on equipped missile ammo during appraisal")),
                ("show_aura_buff", new Property<bool>(false, "shows active aura enchantments on wielded items during appraisal")),
                ("show_dat_warning", new Property<bool>(false, "if TRUE, will alert player (dat_warning_msg) when client attempts to download from server and boot them from game, disabled by default")),
                ("show_dot_messages", new Property<bool>(false, "enabled, shows combat messages for DoT damage ticks. defaults to disabled, as in retail")),
                ("show_first_login_gift", new Property<bool>(false, "if TRUE, will show on first login that the player earned bonus item (Blackmoor's Favor and/or Asheron's Benediction), disabled by default because msg is kind of odd on an emulator")),
                ("show_mana_conv_bonus_0", new Property<bool>(true, "if disabled, only shows mana conversion bonus if not zero, during appraisal of casting items")),
                ("smite_uses_takedamage", new Property<bool>(false, "if enabled, smite applies damage via TakeDamage")),
                ("spellcast_recoil_queue", new Property<bool>(false, "if true, players can queue the next spell to cast during recoil animation")),
                ("spell_projectile_ethereal", new Property<bool>(false, "broadcasts all spell projectiles as ethereal to clients only, and manually send stop velocity on collision. can fix various issues with client missing target id.")),
                ("suicide_instant_death", new Property<bool>(false, "if enabled, @die command kills player instantly. defaults to disabled, as in retail")),
                ("taboo_table", new Property<bool>(true, "if enabled, taboo table restricts player names during character creation")),
                ("tailoring_intermediate_uieffects", new Property<bool>(false, "If true, tailoring intermediate icons retain the magical/elemental highlight of the original item")),
                ("town_control_enable_webhook_debug", new Property<bool>(false, "If true, town control debug messages get sent to webhook")),
                ("trajectory_alt_solver", new Property<bool>(false, "use the alternate trajectory solver for missiles and spell projectiles")),
                ("universal_masteries", new Property<bool>(true, "if TRUE, matches end of retail masteries - players wielding almost any weapon get +5 DR, except if the weapon \"seems tough to master\". " +
                                                                 "if FALSE, players start with mastery of 1 melee and 1 ranged weapon type based on heritage, and can later re-select these 2 masteries")),
                ("unlimited_sequence_gaps", new Property<bool>(false, "upon startup, allows server to find all unused guids in a range instead of a set hard limit")),
                ("use_generator_rotation_offset", new Property<bool>(true, "enables or disables using the generator's current rotation when offseting relative positions")),
                ("use_portal_max_level_requirement", new Property<bool>(true, "disable this to ignore the max level restriction on portals")),
                ("use_turbine_chat", new Property<bool>(true, "enables or disables global chat channels (General, LFG, Roleplay, Trade, Olthoi, Society, Allegience)")),
                ("use_wield_requirements", new Property<bool>(true, "disable this to bypass wield requirements. mostly for dev debugging")),
                ("version_info_enabled", new Property<bool>(false, "toggles the /aceversion player command")),
                ("vendor_shop_uses_generator", new Property<bool>(false, "enables or disables vendors using generator system in addition to createlist to create artificial scarcity")),
                ("equipmentset_whitelist_enabled", new Property<bool>(false, "enable this to limit areas where Sets drop to whitelisted landblocks")),
                ("epic_whitelist_enabled", new Property<bool>(false, "enable this to limit areas where Epic cantrips drop to whitelisted landblocks")),
                ("legendary_whitelist_enabled", new Property<bool>(false, "enable this to limit areas where Legendary cantrips drop to whitelisted landblocks")),
                ("ratings_whitelist_enabled", new Property<bool>(false, "enable this to limit areas where Ratings drop on loot gen armor to whitelisted landblocks")),
                ("aetheria_whitelist_enabled", new Property<bool>(false, "enable this to limit areas where aetheria drop to whitelisted landblocks")),
                ("aetheria_highlevel_whitelist_enabled", new Property<bool>(false, "enable this to limit areas where level 4 and 5 aetheria drop to whitelisted landblocks")),
                ("block_vpn_connections", new Property<bool>(false, "enable this to block user sessions from IPs identified as VPN proxies")),
                ("disable_arenas", new Property<bool>(false, "set to true to disable arena events")),
                ("arena_allow_same_ip_match", new Property<bool>(false, "enable this allow two characters connected from the same IP to be matched in an arena event")),
                ("arena_allow_observers", new Property<bool>(true, "enable this to allow players to watch arena matches as invisible observers")),
                ("tinker_lotto_enabled", new Property<bool>(false, "enables the tinkering lotto feature")),
                ("force_materialization", new Property<bool>(true, "forces players to materialize on login")),
                ("disable_pvp_cleave", new Property<bool>(false, "disables melee cleave attacks from targeting players")),
                ("disable_world_bosses", new Property<bool>(true, "disables spawning of world bosses")),
                ("jump_cancels_melee", new Property<bool>(false, "cancels melee attacks when the target is jumping")),
                ("vendor_disable_resell", new Property<bool>(false, "disables all vendor reselling of items bought from players; i.e. all items a players sells to a vendor are destroyed")),
                ("world_closed", new Property<bool>(false, "enable this to startup world as a closed to players world"))
                );

        public static readonly ReadOnlyDictionary<string, Property<long>> DefaultLongProperties =
            DictOf(
                ("char_delete_time", new Property<long>(3600, "the amount of time in seconds a deleted character can be restored")),
                ("chat_requires_account_time_seconds", new Property<long>(0, "the amount of time in seconds an account is required to have existed for for global chat privileges")),
                ("chat_requires_player_age", new Property<long>(0, "the amount of time in seconds a player is required to have played for global chat privileges")),
                ("chat_requires_player_level", new Property<long>(0, "the level a player is required to have for global chat privileges")),
                ("corpse_spam_limit", new Property<long>(15, "the number of corpses a player is allowed to leave on a landblock at one time")),
                ("default_subscription_level", new Property<long>(1, "retail defaults to 1, 1 = standard subscription (same as 2 and 3), 4 grants ToD pre-order bonus item Asheron's Benediction")),
                ("fellowship_even_share_level", new Property<long>(50, "level when fellowship XP sharing is no longer restricted")),
                ("ignore_burden_below_character_level", new Property<long>(10, "The minimum character level at which burden will start to apply. Retail defaults to 0.")),
                ("mansion_min_rank", new Property<long>(6, "overrides the default allegiance rank required to own a mansion")),
                ("max_chars_per_account", new Property<long>(11, "retail defaults to 11, client supports up to 20")),
                ("pk_timer", new Property<long>(20, "the number of seconds where a player cannot perform certain actions (ie. teleporting) after becoming involved in a PK battle")),
                ("player_save_interval", new Property<long>(300, "the number of seconds between automatic player saves")),
                ("rares_max_days_between", new Property<long>(45, "for rares_real_time_v2: the maximum number of days a player can go before a rare is generated on rare eligible creature kills")),
                ("rares_max_seconds_between", new Property<long>(5256000, "for rares_real_time: the maximum number of seconds a player can go before a second chance at a rare is allowed on rare eligible creature kills that did not generate a rare")),
                ("summoning_killtask_multicredit_cap", new Property<long>(2, "if allow_summoning_killtask_multicredit is enabled, the maximum # of killtask credits a player can receive from 1 kill")),
                ("teleport_visibility_fix", new Property<long>(0, "Fixes some possible issues with invisible players and mobs. 0 = default / disabled, 1 = players only, 2 = creatures, 3 = all world objects")),
                ("pvp_damage_cap", new Property<long>(450, "The cap for PvP damage per strike")),
                ("pvp_dispel_vuln_timer", new Property<long>(300, "the number of seconds where a player's dispel actions will not remove vulns after becoming involved in a PK battle")),
                ("jump_limit", new Property<long>(7, "the number of jumps you can do before being penalized")),
                ("jump_second_timer", new Property<long>(10, "the number of seconds cutoff for jumping")),
                ("jump_penalty_length", new Property<long>(5, "the number of seconds you're penalized after hitting the jump limits")),
                ("town_control_reward_level_minimum", new Property<long>(100, "the minimum level a player has to be to receive town control rewards")),
                ("town_control_reward_zerg_limit", new Property<long>(9, "the maximum numbers of players from the same clan allowed in the town control conflict landblock")), 
                ("town_control_periodic_reward_seconds", new Property<long>(50, "the number seconds between periodic trophy awards during an active town control event")),
                ("town_control_periodic_reward_defender_seconds", new Property<long>(25, "the number seconds between periodic trophy awards during an active town control event for the defending clan")),
                ("town_control_reward_defender_lum_amount", new Property<long>(500, "the amount of lum each defender gets every {town_control_periodic_reward_seconds} during an active town control event")),
                ("arenas_min_level", new Property<long>(25, "the minimum level required to join an arena queue")),
                ("arenas_reward_min_level", new Property<long>(25, "the minimum level required to get arena rewards")),
                ("arenas_reward_min_age", new Property<long>(864000, "the minimum in-game age in seconds required to get arena rewards")),
                ("pvp_chug_timer", new Property<long>(0, "the minimum time in milliseconds between chugs. if a chug is used within X milliseconds of a previous one, it will heal for 0. if value is set to 0 the feature is disabled.")),
                ("force_materialization_duration", new Property<long>(1, "the number of seconds a player should materialize for before logging out")),
                ("minimum_portalspace_seconds", new Property<long>(3, "the minimum number of seconds a player must be in portal space before exiting")),
                ("vendor_max_items_per_sale", new Property<long>(24, "the maximum number of items a player can sell to a vendor in a single transaction")),
                ("vendor_sale_rate_limit_seconds", new Property<long>(60, "the minimum number of seconds that must pass after a player sells to a vendor before a player can sell to a vendor again"))
                );

        public static readonly ReadOnlyDictionary<string, Property<double>> DefaultDoubleProperties =
            DictOf(

                ("cantrip_drop_rate", new Property<double>(1.0, "Scales the chance for cantrips to drop in each tier. Defaults to 1.0, as per end of retail")),
                ("cloak_cooldown_seconds", new Property<double>(5.0, "The number of seconds between possible cloak procs.")),
                ("cloak_max_proc_base", new Property<double>(0.25, "The max proc chance of a cloak.")),
                ("cloak_max_proc_damage_percentage", new Property<double>(0.30, "The damage percentage at which cloak proc chance plateaus.")),
                ("cloak_min_proc", new Property<double>(0, "The minimum proc chance of a cloak.")),
                ("pvp_cloak_max_dmg_mitigation", new Property<double>(100, "The maximum amount of damage a cloak proc can mitigate")),
                ("minor_cantrip_drop_rate", new Property<double>(1.0, "Scales the chance for minor cantrips to drop, relative to other cantrip levels in the tier. Defaults to 1.0, as per end of retail")),
                ("major_cantrip_drop_rate", new Property<double>(1.0, "Scales the chance for major cantrips to drop, relative to other cantrip levels in the tier. Defaults to 1.0, as per end of retail")),
                ("epic_cantrip_drop_rate", new Property<double>(1.0, "Scales the chance for epic cantrips to drop, relative to other cantrip levels in the tier. Defaults to 1.0, as per end of retail")),
                ("legendary_cantrip_drop_rate", new Property<double>(1.0, "Scales the chance for legendary cantrips to drop, relative to other cantrip levels in the tier. Defaults to 1.0, as per end of retail")),
                ("rating_drop_rate", new Property<double>(0.25, "Sets the chance for ratings to drop.  Default is 0.25, or 25%.  Keep in mind that ratings only drop on Tier 8, and then there's separate rolls to determine what level of rating you get.  This setting only affects the base drop rate.")),
                ("advocate_fane_auto_bestow_level", new Property<double>(1, "the level that advocates are automatically bestowed by Advocate Fane if advocate_fane_auto_bestow is true")),
                ("aetheria_drop_rate", new Property<double>(1.0, "Modifier for Aetheria drop rate, 1 being normal")),
                ("chess_ai_start_time", new Property<double>(-1.0, "the number of seconds for the chess ai to start. defaults to -1 (disabled)")),
                ("encounter_delay", new Property<double>(1800, "the number of seconds a generator profile for regions is delayed from returning to free slots")),
                ("encounter_regen_interval", new Property<double>(600, "the number of seconds a generator for regions at which spawns its next set of objects")),
                ("equipmentsetid_drop_rate", new Property<double>(1.0, "Modifier for EquipmentSetID drop rate, 1 being normal")),
                ("fast_missile_modifier", new Property<double>(1.2, "The speed multiplier applied to fast missiles. Defaults to retail value of 1.2")),
                ("ignore_magic_armor_pvp_scalar", new Property<double>(1.0, "Scales the effectiveness of IgnoreMagicArmor (ie. hollow weapons) in pvp battles. 1.0 = full effectiveness / ignore all enchantments on armor (default), 0.5 = half effectiveness / use half enchantments from armor, 0.0 = no effectiveness / use full enchantments from armor")),
                ("ignore_magic_resist_pvp_scalar", new Property<double>(1.0, "Scales the effectiveness of IgnoreMagicResist (ie. hollow weapons) in pvp battles. 1.0 = full effectiveness / ignore all resistances from life enchantments (default), 0.5 = half effectiveness / use half resistances from life enchantments, 0.0 = no effectiveness / use full resistances from life enchantments")),
                ("luminance_modifier", new Property<double>(1.0, "Scales the amount of luminance received by players")),
                ("melee_max_angle", new Property<double>(0.0, "for melee players, the maximum angle before a TurnTo is required. retail appeared to have required a TurnTo even for the smallest of angle offsets.")),
                ("mob_awareness_range", new Property<double>(1.0, "Scales the distance the monsters become alerted and aggro the players")),
                ("pk_new_character_grace_period", new Property<double>(300, "the number of seconds, in addition to pk_respite_timer, that a player killer is set to non-player killer status after first exiting training academy")),
                ("pk_respite_timer", new Property<double>(300, "the number of seconds that a player killer is set to non-player killer status after dying to another player killer")),
                ("quest_lum_modifier", new Property<double>(1.0, "Scale multiplier for amount of quest luminance received by players.  Quest lum is also modified by 'luminance_modifier'.")),
                ("quest_mindelta_rate", new Property<double>(1.0, "scales all quest min delta time between solves, 1 being normal")),
                ("quest_xp_modifier", new Property<double>(1.0, "Scale multiplier for amount of quest XP received by players.  Quest XP is also modified by 'xp_modifier'.")),
                ("rare_drop_rate_percent", new Property<double>(0.04, "Adjust the chance of a rare to spawn as a percentage. Default is 0.04, or 1 in 2,500. Max is 100, or every eligible drop.")),
                ("spellcast_max_angle", new Property<double>(20.0, "for advanced player spell casting, the maximum angle to target release a spell projectile. retail seemed to default to value of around 20, although some players seem to prefer a higher 45 degree angle")),
                ("trophy_drop_rate", new Property<double>(1.0, "Modifier for trophies dropped on creature death")),
                ("unlocker_window", new Property<double>(10.0, "The number of seconds a player unlocking a chest has exclusive access to first opening the chest.")),
                ("vendor_unique_rot_time", new Property<double>(300, "the number of seconds before unique items sold to vendors disappear")),
                ("vitae_penalty", new Property<double>(0.05, "the amount of vitae penalty a player gets per death")),
                ("vitae_penalty_max", new Property<double>(0.40, "the maximum vitae penalty a player can have")),                
                ("xp_modifier", new Property<double>(1.0, "scales the amount of xp received by players")),                
                ("pvp_dmg_mod_war", new Property<double>(1.0, "Scales the amount of damage for war magic")),
                ("pvp_dmg_mod_war_variance", new Property<double>(1.0, "Scales the low end for war magic bolts and arcs without effecting top end.  Values under 1 will reduce the variance and increase min dmg by the amount the variance was reduced.  Values over 1 will increase variance and reduce min dmg to match.")),
                ("pvp_dmg_mod_war_streak", new Property<double>(1.0, "Scales the amount of damage for war streaks")),
                ("pvp_dmg_mod_war_blast", new Property<double>(1.0, "Scales the amount of damage for war blasts")),                
                ("pvp_dmg_mod_war_cb_crit", new Property<double>(1.0, "Scales the amount of CB crit damage for war magic.")),
                ("pvp_dmg_mod_war_cs_crit", new Property<double>(1.0, "Scales the amount of CS crit damage for war magic.")),
                ("pvp_dmg_mod_war_cs_dmg", new Property<double>(1.0, "Scales the amount of CS damage for war magic for all hits (both crits and non-crits).")),
                ("pvp_dmg_mod_void", new Property<double>(1.0, "Scales the amount of damage players take from Void Magic (not including streaks and DOTs which have their own mods)")),
                ("pvp_dmg_mod_void_streak", new Property<double>(1.0, "Scales the amount of damage for void streaks.")),
                ("pvp_dmg_mod_void_dot", new Property<double>(1.0, "Scales the amount of damage for void DOTs.")),
                ("pvp_dmg_mod_void_crit", new Property<double>(1.0, "Scales the amount of crit damage for void magic.")),
                ("pvp_dmg_mod_void_cb_crit", new Property<double>(1.0, "Scales the amount of CB crit damage for void magic.")),
                ("pvp_dmg_mod_void_variance", new Property<double>(1.0, "Scales the low end for void magic bolts and arcs without effecting top end.  Values under 1 will reduce the variance and increase min dmg by the amount the variance was reduced.  Values over 1 will increase variance and reduce min dmg to match.")),
                ("pvp_dmg_mod_phantom", new Property<double>(1.0, "Scales the amount of damage for phantom")),
                ("pvp_dmg_mod_hollow", new Property<double>(1.0, "Scales the amount of damage for hollow")),                
                ("pvp_dmg_mod_cb", new Property<double>(1.0, "Scales the amount of damage for crippling blow")),
                ("pvp_dmg_mod_ar", new Property<double>(1.0, "Scales the amount of damage for armor rending")),
                ("pvp_dmg_mod_cs", new Property<double>(1.0, "Scales the amount of damage for critical strike")),
                ("pvp_dmg_mod_fw", new Property<double>(1.0, "Scales the amount of damage for Finesse Weapons")),
                ("pvp_dmg_mod_fw_cb", new Property<double>(1.0, "Scales the amount of damage for FW CB.")),
                ("pvp_dmg_mod_fw_cb_crit", new Property<double>(1.0, "Scales the amount of damage for FW CB Crit.")),
                ("pvp_dmg_mod_fw_cs", new Property<double>(1.0, "Scales the amount of damage for FW CS.")),
                ("pvp_dmg_mod_fw_ar", new Property<double>(1.0, "Scales the amount of damage for FW AR.")),
                ("pvp_dmg_mod_fw_hollow", new Property<double>(1.0, "Scales the amount of damage for FW Hollow.")),
                ("pvp_dmg_mod_fw_phantom", new Property<double>(1.0, "Scales the amount of damage for war FW Phantom.")),
                ("pvp_dmg_mod_lw", new Property<double>(1.0, "Scales the amount of damage for Light Weapons")),
                ("pvp_dmg_mod_lw_cb", new Property<double>(1.0, "Scales the amount of damage for LW CB.")),
                ("pvp_dmg_mod_lw_cb_crit", new Property<double>(1.0, "Scales the amount of damage for LW CB Crit.")),
                ("pvp_dmg_mod_lw_cs", new Property<double>(1.0, "Scales the amount of damage for LW CS.")),
                ("pvp_dmg_mod_lw_ar", new Property<double>(1.0, "Scales the amount of damage for LW AR.")),
                ("pvp_dmg_mod_lw_hollow", new Property<double>(1.0, "Scales the amount of damage for LW Hollow.")),
                ("pvp_dmg_mod_lw_phantom", new Property<double>(1.0, "Scales the amount of damage for LW Phantom.")),
                ("pvp_dmg_mod_lw_triplestrike", new Property<double>(1.0, "Scales the amount of damage for LW Triple Strike weapons.")),
                ("pvp_dmg_mod_lw_cb_crit_triplestrike", new Property<double>(1.0, "Scales the amount of Crit damage for LW Triple Strike weapons.")),
                ("pvp_dmg_mod_hw", new Property<double>(1.0, "Scales the amount of damage for Heavy Weapons")),                
                ("pvp_dmg_mod_hw_cb", new Property<double>(1.0, "Scales the amount of damage for HW CB.")),
                ("pvp_dmg_mod_hw_cb_crit", new Property<double>(1.0, "Scales the amount of damage for HW CB Crit.")),
                ("pvp_dmg_mod_hw_cs", new Property<double>(1.0, "Scales the amount of damage for HW CS.")),
                ("pvp_dmg_mod_hw_ar", new Property<double>(1.0, "Scales the amount of damage for HW AR.")),
                ("pvp_dmg_mod_hw_hollow", new Property<double>(1.0, "Scales the amount of damage for HW Hollow.")),
                ("pvp_dmg_mod_hw_phantom", new Property<double>(1.0, "Scales the amount of damage for HW Phantom.")),
                ("pvp_dmg_mod_hw_multistrike", new Property<double>(1.0, "Scales the amount of damage for HW Multi Strike weapons.")),
                ("pvp_dmg_mod_hw_cb_crit_multistrike", new Property<double>(1.0, "Scales the amount of Crit damage for HW Multi Strike weapons.")),
                ("pvp_dmg_mod_2h", new Property<double>(1.0, "Scales the amount of damage for Two Handed Weapons")),
                ("pvp_dmg_mod_2h_cb", new Property<double>(1.0, "Scales the amount of damage for v CB.")),
                ("pvp_dmg_mod_2h_cb_crit", new Property<double>(1.0, "Scales the amount of damage for 2H CB Crit.")),
                ("pvp_dmg_mod_2h_cs", new Property<double>(1.0, "Scales the amount of damage for 2H CS.")),
                ("pvp_dmg_mod_2h_ar", new Property<double>(1.0, "Scales the amount of damage for 2H AR.")),
                ("pvp_dmg_mod_2h_hollow", new Property<double>(1.0, "Scales the amount of damage for 2H Hollow.")),
                ("pvp_dmg_mod_2h_phantom", new Property<double>(1.0, "Scales the amount of damage for 2H Phantom.")),                
                ("pvp_dmg_mod_xbow", new Property<double>(1.0, "Scales the amount of damage for Xbow")),                
                ("pvp_dmg_mod_xbow_cb", new Property<double>(1.0, "Scales the amount of damage for Xbow CB.")),
                ("pvp_dmg_mod_xbow_cb_crit", new Property<double>(1.0, "Scales the amount of damage for Xbow CB Crit.")),
                ("pvp_dmg_mod_xbow_cs", new Property<double>(1.0, "Scales the amount of damage for Xbow CS.")),
                ("pvp_dmg_mod_xbow_ar", new Property<double>(1.0, "Scales the amount of damage for Xbow AR.")),
                ("pvp_dmg_mod_xbow_hollow", new Property<double>(1.0, "Scales the amount of damage for Xbow Hollow.")),
                ("pvp_dmg_mod_xbow_phantom", new Property<double>(1.0, "Scales the amount of damage for Xbow Phantom.")),
                ("pvp_dmg_mod_bow", new Property<double>(1.0, "Scales the amount of damage for hollow")),
                ("pvp_dmg_mod_bow_cb", new Property<double>(1.0, "Scales the amount of damage for Bow CB.")),
                ("pvp_dmg_mod_bow_cb_crit", new Property<double>(1.0, "Scales the amount of damage for Bow CB Crit.")),
                ("pvp_dmg_mod_bow_cs", new Property<double>(1.0, "Scales the amount of damage for Bow CS.")),
                ("pvp_dmg_mod_bow_ar", new Property<double>(1.0, "Scales the amount of damage for Bow AR.")),
                ("pvp_dmg_mod_bow_hollow", new Property<double>(1.0, "Scales the amount of damage for Bow Hollow.")),
                ("pvp_dmg_mod_bow_phantom", new Property<double>(1.0, "Scales the amount of damage for Bow Phantom.")),
                ("pvp_dmg_mod_tw", new Property<double>(1.0, "Scales the amount of damage for hollow")),
                ("pvp_dmg_mod_tw_cb", new Property<double>(1.0, "Scales the amount of damage for TW CB.")),
                ("pvp_dmg_mod_tw_cb_crit", new Property<double>(1.0, "Scales the amount of damage for TW CB Crit.")),
                ("pvp_dmg_mod_tw_cs", new Property<double>(1.0, "Scales the amount of damage for TW CS.")),
                ("pvp_dmg_mod_tw_ar", new Property<double>(1.0, "Scales the amount of damage for TW AR.")),
                ("pvp_dmg_mod_tw_hollow", new Property<double>(1.0, "Scales the amount of damage for TW Hollow.")),
                ("pvp_dmg_mod_tw_phantom", new Property<double>(1.0, "Scales the amount of damage for TW Phantom.")),
                ("pvp_cs_critrate_mod", new Property<double>(1.0, "Scales the crit rate for CS")),
                ("pvp_void_hybrid_mod", new Property<double>(1.0, "Scales the amount of DOT damage when a player is a hybrid void.")),
                ("pvp_dmg_mod_void_dot_rating_reduction", new Property<double>(1.0, "Scales the amount of rating reduction received from a void DOT that's cast by a PK on another player.")),
                //("pvp_dmg_mod_ratings_bonus", new Property<double>(1.0, "Scales the bonus received from dmg related ratings during pvp")),
                //("pvp_dmg_mod_ratings_cap", new Property<double>(100.0, "Caps the ratings amount that can be applied for any given rating type during pvp")),
                ("cloak_max_proc_rate", new Property<double>(25.0, "Cap cloak proc chance to this percentage (100.0 will effectively use the standard ACE proc rate).")),
                ("town_control_trophy_chance", new Property<double>(0.25, "the change that a town control trophy is given to a player that is within the landblock of an active town control event with each player tick")),
                ("arena_corpse_rot_seconds", new Property<double>(900, "the number of seconds a corpse that is generated in an arena landblock takes to rot. Default 15 mins.")),
                ("arena_pk_respite_timer", new Property<double>(120, "the number of seconds that a player killer is set to non-player killer status after dying to another player killer in an arena match.  Should be a value less than pk_respite_timer, or else pk_respite_timer will override.")),
                ("arena_1v1_healkit_skill_bonus_cap", new Property<double>(150, "the maximum effective skill bonus applied from a healing kit during arena 1v1 events.")),
                ("arena_1v1_healkit_restoration_bonus_cap", new Property<double>(1.5, "the maximum effective restoration bonus applied from a healing kit during arena 1v1 events."))
                );

        public static readonly ReadOnlyDictionary<string, Property<string>> DefaultStringProperties =
            DictOf(
                ("content_folder", new Property<string>("Content", "for content creators to live edit weenies. defaults to Content folder found in same directory as ACE.Server.dll")),
                ("dat_older_warning_msg", new Property<string>("Your DAT files are incomplete.\nThis server does not support dynamic DAT updating at this time.\nPlease visit https://emulator.ac/how-to-play to download the complete DAT files.", "Warning message displayed (if show_dat_warning is true) to player if client attempts DAT download from server")),
                ("dat_newer_warning_msg", new Property<string>("Your DAT files are newer than expected.\nPlease visit https://emulator.ac/how-to-play to download the correct DAT files.", "Warning message displayed (if show_dat_warning is true) to player if client connects to this server")),
                ("popup_header", new Property<string>("Welcome to Asheron's Call!", "Welcome message displayed when you log in")),
                ("popup_welcome", new Property<string>("To begin your training, speak to the Society Greeter. Walk up to the Society Greeter using the 'W' key, then double-click on her to initiate a conversation.", "Welcome message popup in training halls")),
                ("popup_welcome_olthoi", new Property<string>("Welcome to the Olthoi hive! Be sure to talk to the Olthoi Queen to receive the Olthoi protections granted by the energies of the hive.", "Welcome message displayed on the first login for an Olthoi Player")),
                ("popup_motd", new Property<string>("", "Popup message of the day")),
                ("server_motd", new Property<string>("", "Server message of the day")),
                ("turbine_chat_webhook", new Property<string>("", "Webhook to be used for turbine chat. This is for copying ingame general chat channels to a Discord channel.")),
                ("turbine_chat_webhook_audit", new Property<string>("", "Webhook to be used for ingame audit log.")),
                ("proxycheck_api_key", new Property<string>("", "API key for proxycheck.io service for VPN detection")),
                ("town_control_alleglist", new Property<string>("", "A comma separated list of MonarchID values to whitelist allegiances for participation in town control events")),
                ("town_control_globals_webhook", new Property<string>("", "Webhook to be send Town Control global messages.")),
                ("arenas_blacklist", new Property<string>("", "A comma separated list of CharacterID values that cannot participate in Arenas")),
                ("arena_globals_webhook", new Property<string>("", "Webhook to be send Arena global messages.")),
                ("rare_audit_webhook", new Property<string>("", "Webhook to be send rare audit messages.")),
                ("world_boss_webhook", new Property<string>("", "Webhook to be send world boss messages.")),
                ("globalchatgag_ip_list", new Property<string>("", "List of IPs that are global chat gagged"))
                );
    }
}

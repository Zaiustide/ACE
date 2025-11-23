DELETE FROM ace_world.treasure_death WHERE treasure_Type = 10023;

INSERT INTO ace_world.treasure_death
SET
  treasure_Type = 10023,
  tier = 9,
  loot_Quality_Mod = 0.8125,
  unknown_Chances = 19,
  item_Chance = 50,
  item_Min_Amount = 2,
  item_Max_Amount = 5,
  item_Treasure_Type_Selection_Chances = 12,
  magic_Item_Chance = 100,
  magic_Item_Min_Amount = 5,
  magic_Item_Max_Amount = 12,
  magic_Item_Treasure_Type_Selection_Chances = 22,
  mundane_Item_Chance = 50,
  mundane_Item_Min_Amount = 3,
  mundane_Item_Max_Amount = 9,
  mundane_Item_Type_Selection_Chances = 9
;
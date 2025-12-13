DELETE FROM ace_world.treasure_death WHERE treasure_Type = 10025;

INSERT INTO ace_world.treasure_death
SET
  treasure_Type = 10025,
  tier = 9,
  loot_Quality_Mod = 0.8725,
  unknown_Chances = 19,
  item_Chance = 1,
  item_Min_Amount = 0,
  item_Max_Amount = 1,
  item_Treasure_Type_Selection_Chances = 12,
  magic_Item_Chance = 100,
  magic_Item_Min_Amount = 18,
  magic_Item_Max_Amount = 26,
  magic_Item_Treasure_Type_Selection_Chances = 22,
  mundane_Item_Chance = 1,
  mundane_Item_Min_Amount = 0,
  mundane_Item_Max_Amount = 1,
  mundane_Item_Type_Selection_Chances = 9
;
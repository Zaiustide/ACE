DELETE FROM ace_world.treasure_death WHERE treasure_Type = 10000;

INSERT INTO ace_world.treasure_death
(
  treasure_Type,
  tier,
  loot_Quality_Mod,
  unknown_Chances,
  item_Chance,
  item_Min_Amount,
  item_Max_Amount,
  item_Treasure_Type_Selection_Chances,
  magic_Item_Chance,
  magic_Item_Min_Amount,
  magic_Item_Max_Amount,
  magic_Item_Treasure_Type_Selection_Chances,
  mundane_Item_Chance,
  mundane_Item_Min_Amount,
  mundane_Item_Max_Amount,
  mundane_Item_Type_Selection_Chances
)
VALUES
(  
  10000,
  8,
  0.85,
  19,
  0,
  0,
  0,
  0,
  100,
  10,
  15,
  22,
  100,
  0,
  0,
  0
)
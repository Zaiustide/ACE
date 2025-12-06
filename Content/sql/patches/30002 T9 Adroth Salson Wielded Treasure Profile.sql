DELETE FROM ace_world.treasure_wielded WHERE treasure_Type = 30002;

INSERT INTO ace_world.treasure_wielded (id, treasure_Type, weenie_Class_Id, palette_Id, unknown_1, shade, stack_Size, stack_Size_Variance, probability, unknown_3, unknown_4, unknown_5, set_Start, has_Sub_Set, continues_Previous_Set, unknown_9, unknown_10, unknown_11, unknown_12, last_Modified)
SELECT 
  id + 10000, 
  30002,
  weenie_class_id,
  palette_Id, 
  unknown_1, 
  shade, 
  stack_Size, 
  stack_Size_Variance, 
  probability, 
  unknown_3, 
  unknown_4, 
  unknown_5, 
  set_Start, 
  has_Sub_Set, 
  continues_Previous_Set, 
  unknown_9, 
  unknown_10, 
  unknown_11, 
  unknown_12, 
  last_Modified
FROM ace_world.treasure_wielded
WHERE treasure_type = 434;

/* Update Weeping Sword to 100% */
UPDATE ace_world.treasure_wielded 
SET probability = 1
WHERE treasure_Type = 30002
AND weenie_Class_Id = 24206;


/* Remove non-weeping weapons */
DELETE FROM ace_world.treasure_wielded
WHERE treasure_Type = 30002
AND weenie_Class_Id IN (23699, 23706, 23709);



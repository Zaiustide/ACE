/* Green Society Band - add Legendary Two Hand */ 
INSERT INTO ace_shard.biota_properties_spell_book
(object_id, spell, probability)
SELECT id, 6073, 2
FROM ace_shard.biota
WHERE weenie_class_id = 52786
AND id NOT IN
(
  SELECT object_id 
  FROM ace_shard.biota_properties_spell_book 
  WHERE spell = 6073
)
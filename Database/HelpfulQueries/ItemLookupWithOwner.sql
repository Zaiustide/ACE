/* 
   Look up items and show their owner 
   Covers scenarios
     -An item is in the main pack of a character (the character IS the owning container)
     -An item is in a side pack that the character owns (the character is the parent of the container that owns the item)
     -An item is actively being wielded by a character
     -An item is in a housing chest that a character owns
     -An item is in a pack that's inside a housing chest that a character owns
     
   Does not cover scenarios where an item is on a corpse somewhere, or where an item is just sitting on the ground
   
   This example returns a record for all rare armor and rare weapons showing their owner.
   If you're looking for some other type of item, modify the WHERE clause to return just the item classes or types you want
*/
SELECT
  item.Id AS itemBiotaId,
  item.weenie_class_id AS itemWeenieId,
  itemName.`value` AS itemName,  
  itemStackSize.`value` AS itemStackSize,
  CASE 
    WHEN ownerChar.id IS NOT NULL THEN ownerChar.`name`
    WHEN ownerChar.id IS NULL AND owningContainerName.`value` IS NOT NULL AND owningContainerParentCharacter.`name` IS NOT NULL THEN owningContainerParentCharacter.`name`
    WHEN ownerChar.id IS NULL AND owningStorageCharacter.`name` IS NOT NULL THEN owningStorageCharacter.`name`
    WHEN ownerChar.id IS NULL AND owningContainerStorageCharacter.`name` IS NOT NULL THEN owningContainerStorageCharacter.`name`
    WHEN ownerChar.id IS NULL AND wielderCharacter.`name` IS NOT NULL THEN wielderCharacter.`name`
  END AS owningCharacter,
  ownerChar.id AS mainPackCharacterId,
  ownerChar.`name` AS mainPackCharacterName,
  owningContainerBiota.id AS owningContainerBiotaId,
  owningContainerName.`value` AS owningContainerName,
  owningContainerParentCharacter.`name` AS owningContainerParentCharacterName,
  owningStorageCharacter.`name` AS owningStorageCharacter,
  wielderCharacter.`name` AS wielderCharacterName,
  owningContainerStorageCharacter.`name` AS owningContainerStorageCharacter
FROM ace_shard.biota item
JOIN ace_shard.biota_properties_string itemName
ON item.id = itemName.object_id
AND itemName.`type` = 1
LEFT JOIN ace_shard.biota_properties_int itemStackSize
ON item.id = itemStackSize.object_id
AND itemStackSize.`type` = 11
LEFT JOIN ace_shard.biota_properties_i_i_d itemOwner
ON item.id = itemOwner.object_id
AND itemOwner.`type` = 1
LEFT JOIN ace_shard.character ownerChar
ON itemOwner.`value` = ownerChar.id
LEFT JOIN ace_shard.biota owningContainerBiota
ON itemOwner.`value` = owningContainerBiota.id
LEFT JOIN ace_shard.biota_properties_string owningContainerName
ON itemOwner.`value` = owningContainerName.object_id
AND owningContainerName.`type` = 1
LEFT JOIN ace_shard.biota_properties_i_i_d owningContainerParentIID
ON itemOwner.`value` = owningContainerParentIID.object_id
AND owningContainerParentIID.`type` = 1
LEFT JOIN ace_shard.character owningContainerParentCharacter
ON owningContainerParentIID.`value` = owningContainerParentCharacter.id
LEFT JOIN ace_shard.biota_properties_i_i_d wielderIID
ON item.id = wielderIID.object_id
AND wielderIID.`type` = 3
LEFT JOIN ace_shard.character wielderCharacter
ON wielderIID.`value` = wielderCharacter.id
LEFT JOIN ace_shard.biota_properties_i_i_d owningStorageIID
ON itemOwner.`value` = owningStorageIID.object_id
AND owningStorageIID.`type` = 32
LEFT JOIN ace_shard.character owningStorageCharacter
ON owningStorageIID.`value` = owningStorageCharacter.id
LEFT JOIN ace_shard.biota_properties_i_i_d owningContainerStorageIID
ON owningContainerParentIID.`value` = owningContainerStorageIID.object_id
AND owningContainerStorageIID.`type` = 32
LEFT JOIN ace_shard.character owningContainerStorageCharacter
ON owningContainerStorageIID.`value` = owningContainerStorageCharacter.id
WHERE item.weenie_class_id IN 
(30352, 30353, 30354, 30355, 30356, 30357, 30358, 30359, 30360, 30361, 30362, 30363, 30364, 30365, 30366, 30367, 30368, 30369, 30370, 30371, 30372, 30373, 30510, 30511, 30512, 30513, 30514, 30515, 30516, 30517, 30518, 30519, 30520, 30521, 30522, 30523, 30524, 30525, 30526, 30527, 30528, 30529, 30530, 30531, 30532, 30533, 30534, 30302, 30303, 30304, 30305, 30306, 30307, 30308, 30309, 30345, 30346, 30347, 30348, 30349, 30350, 30351, 30374, 30375, 30376, 30377, 30378, 42662, 42663, 42664, 42665, 42666, 43848, 45436, 45437, 45438, 45439, 45440, 45441, 45442, 45443, 45444, 45445, 45446, 45447, 45448, 45449, 45450, 45451, 45452, 45453, 45454, 45455, 45456, 45457, 45458, 45459, 45460, 45461, 45462, 45463, 45464, 45465, 45466, 45467, 45468, 45469, 45470) /* Tier 4 and 6 rares = rare armor and weapons */

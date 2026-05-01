/* Delete portal ties to T9 dungeons */
SELECT * FROM ace_shard.biota_properties_d_i_d WHERE `type` IN (31, 47, 48) AND `value` IN (34438, 7295, 25281, 7242,  2078, 5900);
DELETE FROM ace_shard.biota_properties_d_i_d WHERE `type` IN (31, 47, 48) AND `value` IN (34438, 7295, 25281, 7242,  2078, 5900);
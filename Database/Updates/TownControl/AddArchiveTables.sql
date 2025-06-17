USE ace_town_control;

DROP TABLE IF EXISTS `town_control_event_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `town_control_event_archive` (
  `event_id` INT UNSIGNED NOT NULL COMMENT 'Unique Id of the town control event',
  `town_id` INT UNSIGNED NOT NULL,
  `event_start_time` DATETIME NOT NULL,
  `event_end_time` DATETIME NULL,
  `attacker_id` INT UNSIGNED NOT NULL COMMENT 'character id of the monarch who clan is attacking the town', 
  `attacker_clan_name` TEXT NOT NULL COMMENT 'name of the clan who is attacking the town',
  `defender_id` INT UNSIGNED NULL COMMENT 'character id of the monarch whose clan is defending the town', 
  `defender_clan_name` TEXT NULL COMMENT 'name of the clan who is defending the town',
  `is_attack_success` BIT(1) NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO town_control_event_archive
(`event_id`,`town_id`,`event_start_time`,`event_end_time`,`attacker_id`,`attacker_clan_name`,`defender_id`,`defender_clan_name`,`is_attack_success`)
SELECT `event_id`,`town_id`,`event_start_time`,`event_end_time`,`attacker_id`,`attacker_clan_name`,`defender_id`,`defender_clan_name`,`is_attack_success`
FROM town_control_event
WHERE event_id NOT IN
(
  SELECT event_id FROM town_control_event_archive
);

DELETE FROM town_control_event
WHERE event_id IN 
(
  SELECT event_id FROM town_control_event_archive
)
AND event_id NOT IN 
(
  SELECT MAX(event_id) AS event_id FROM town_control_event_archive GROUP BY town_id
);


SELECT MAX(event_id) AS event_id FROM town_control_event GROUP BY town_id

SELECT * FROM town_control_event
WHERE event_id IN 
(
  SELECT event_id FROM town_control_event_archive
)
AND event_id NOT IN 
(
  SELECT MAX(event_id) AS event_id FROM town_control_event GROUP BY town_id
);

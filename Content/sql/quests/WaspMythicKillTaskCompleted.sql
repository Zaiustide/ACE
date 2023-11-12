DELETE FROM `quest` WHERE `name` = 'WaspMythicKillTaskCompleted';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('WaspMythicKillTaskCompleted', 72000, -1, 'Mythic Wasp Kill Task', '2021-11-01 00:00:00');

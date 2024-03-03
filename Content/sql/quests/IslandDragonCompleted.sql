DELETE FROM `quest` WHERE `name` = 'IslandDragonCompleted';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('IslandDragonCompleted', 72000, -1, 'Island Dragon Completed', '2021-11-01 00:00:00');

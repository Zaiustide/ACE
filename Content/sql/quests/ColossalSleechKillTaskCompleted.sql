DELETE FROM `quest` WHERE `name` = 'ColossalSleechKillTaskCompleted';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('ColossalSleechKillTaskCompleted', 72000, -1, 'Colossal Sleech Kill Task', '2021-11-01 00:00:00');

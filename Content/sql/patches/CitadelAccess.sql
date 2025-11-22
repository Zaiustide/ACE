DELETE FROM `quest` WHERE `name` = 'CitadelAccess';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('CitadelAccess', 0, 1, 'Player has paid toll to access the Mountain Citadel', '2021-11-01 00:00:00');

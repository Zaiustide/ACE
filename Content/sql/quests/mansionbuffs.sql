DELETE FROM `quest` WHERE `name` = 'mansionbuffs';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('mansionbuffs', 20, -1, 'cooldown for virindi servant mansion buffs', '2021-11-01 00:00:00');

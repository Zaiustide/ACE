DELETE FROM `quest` WHERE `name` = 'EnterBattleDungeon';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('EnterBattleDungeon', 3600, -1, 'You''ve entered a battle dungeon.', '2005-02-09 10:00:00');

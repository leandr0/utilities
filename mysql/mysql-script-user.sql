/* Testado*/
GRANT ALL PRIVILEGES ON *.* TO 'lrgoncalves'@'localhost' IDENTIFIED BY '!1eduarda' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'lrgoncalves'@'%' IDENTIFIED BY '!1eduarda' WITH GRANT OPTION;
GRANT RELOAD,PROCESS ON *.* TO 'lrgoncalves'@'localhost';
GRANT USAGE ON *.* TO 'lrgoncalves'@'localhost';

SHOW GRANTS FOR 'lrgoncalves'@'localhost';

/*Não testado*/
INSERT INTO user VALUES('localhost','lrgoncalves',PASSWORD('!1eduarda'),'Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y');
INSERT INTO user VALUES('%','lrgoncalves',PASSWORD('!1eduarda'),'Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y');
INSERT INTO user SET Host='localhost',User='admin', Reload_priv='Y', Process_priv='Y';
INSERT INTO user (Host,User,Password) VALUES('localhost','dummy','');
FLUSH PRIVILEGES;

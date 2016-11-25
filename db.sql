
DROP DATABASE IF EXISTS TEST;
CREATE DATABASE test;
USE test;
DROP TABLE IF EXISTS `test`.`user`;

CREATE TABLE USER (
	`ID` INT(8) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(40) NOT NULL,
	`age` INT(3) NOT NULL,
	`is_admin` TINYINT(1) NOT NULL DEFAULT '0',
	`created_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `user` (`name`,age,isAdmin) VALUES ('Delta','55',TRUE);
INSERT INTO `user` (`name`,age,isAdmin) VALUES ('Vivi','22',TRUE);
INSERT INTO `user` (`name`,age,isAdmin) VALUES ('Poll','11',FALSE);
INSERT INTO `user` (`name`,age,isAdmin) VALUES ('Barbara','29',FALSE);
INSERT INTO `user` (`name`,age,isAdmin) VALUES ('Jackson','39',FALSE);
INSERT INTO `user` (`name`,age,isAdmin) VALUES ('Alen','31',FALSE);
INSERT INTO `user` (`name`,age,isAdmin) VALUES ('Michael','67',TRUE);
INSERT INTO `user` (`name`,age,isAdmin) VALUES ('Jackson','24',FALSE);
INSERT INTO `user` (`name`,age,isAdmin) VALUES ('Brandon','16',FALSE);
INSERT INTO `user` (`name`,age,isAdmin) VALUES ('Risha','22',FALSE);
INSERT INTO `user` (`name`,age,isAdmin) VALUES ('Delta','39',FALSE);
INSERT INTO `user` (`name`,age,isAdmin) VALUES ('Daria','31',FALSE);
INSERT INTO `user` (`name`,age,isAdmin) VALUES ('Vova','23',FALSE);
INSERT INTO `user` (`name`,age,isAdmin) VALUES ('Jasson','23',FALSE);
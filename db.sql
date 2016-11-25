
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

INSERT INTO `user` (`name`,age,is_admin) VALUES ('Delta','55',TRUE);
INSERT INTO `user` (`name`,age,is_admin) VALUES ('Vivi','22',TRUE);
INSERT INTO `user` (`name`,age,is_admin) VALUES ('Poll','11',FALSE);
INSERT INTO `user` (`name`,age,is_admin) VALUES ('Barbara','29',FALSE);
INSERT INTO `user` (`name`,age,is_admin) VALUES ('Jackson','39',FALSE);
INSERT INTO `user` (`name`,age,is_admin) VALUES ('Alen','31',FALSE);
INSERT INTO `user` (`name`,age,is_admin) VALUES ('Michael','67',TRUE);
INSERT INTO `user` (`name`,age,is_admin) VALUES ('Jackson','24',FALSE);
INSERT INTO `user` (`name`,age,is_admin) VALUES ('Brandon','16',FALSE);
INSERT INTO `user` (`name`,age,is_admin) VALUES ('Risha','22',FALSE);
INSERT INTO `user` (`name`,age,is_admin) VALUES ('Delta','39',FALSE);
INSERT INTO `user` (`name`,age,is_admin) VALUES ('Daria','31',FALSE);
INSERT INTO `user` (`name`,age,is_admin) VALUES ('Vova','23',FALSE);
INSERT INTO `user` (`name`,age,is_admin) VALUES ('Jasson','23',FALSE);

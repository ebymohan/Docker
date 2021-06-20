CREATE DATABASE java_sec_code;
use java_sec_code;
CREATE TABLE IF NOT EXISTS `users`(`id` INT UNSIGNED AUTO_INCREMENT,`username` VARCHAR(255) NOT NULL,`password` VARCHAR(255) NOT NULL,PRIMARY KEY (`id`))ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE USER 'devsecops'@'%' IDENTIFIED WITH mysql_native_password BY 'devsecops123';
GRANT SELECT ON java_sec_code . users TO 'devsecops'@'%';
flush privileges;
INSERT INTO `users` VALUES (1, 'admin', 'admin123');
INSERT INTO `users` VALUES (2, 'eby', 'eby123');
INSERT INTO `users` VALUES (3, 'rohit', 'rohit123');

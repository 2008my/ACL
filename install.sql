DROP TABLE `permissions` ,`roles` ,`role_perms` ,`users` ,`user_perms` ,`user_roles`, `app` ;
CREATE TABLE IF NOT EXISTS `app` (`ID` int(11) unsigned NOT NULL AUTO_INCREMENT, `restore` datetime NOT NULL, PRIMARY KEY (`ID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `permissions` (`ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `permKey` varchar(30) NOT NULL, `permName` varchar(30) NOT NULL, PRIMARY KEY (`ID`), UNIQUE KEY `permKey` (`permKey`)) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `roles` (`ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `roleName` varchar(20) NOT NULL, PRIMARY KEY (`ID`), UNIQUE KEY `roleName` (`roleName`)) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;
CREATE TABLE IF NOT EXISTS `role_perms` (`ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `roleID` bigint(20) unsigned NOT NULL, `permID` bigint(20) unsigned NOT NULL, `value` tinyint(1) NOT NULL DEFAULT '0', `addDate` datetime NOT NULL, PRIMARY KEY (`ID`), UNIQUE KEY `roleID_2` (`roleID`,`permID`)) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;
CREATE TABLE IF NOT EXISTS `users` (`ID` int(10) unsigned NOT NULL AUTO_INCREMENT, `username` varchar(20) NOT NULL, PRIMARY KEY (`ID`), KEY `Username` (`username`)) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;
CREATE TABLE IF NOT EXISTS `user_perms` (`ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `userID` bigint(20) unsigned NOT NULL, `permID` bigint(20) unsigned NOT NULL, `value` tinyint(1) NOT NULL DEFAULT '0', `addDate` datetime NOT NULL, PRIMARY KEY (`ID`), UNIQUE KEY `userID` (`userID`,`permID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
CREATE TABLE IF NOT EXISTS `user_roles` (`userID` bigint(20) unsigned NOT NULL, `roleID` bigint(20) unsigned NOT NULL, `addDate` datetime NOT NULL, UNIQUE KEY `userID` (`userID`,`roleID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
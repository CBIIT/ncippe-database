USE biobank;
CREATE TABLE `Role` (
  `RoleId` int(11) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(32) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RoleId`,`RoleName`),
  UNIQUE KEY `RoleName_UNIQUE` (`RoleName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

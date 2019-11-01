USE biobank;
CREATE TABLE `CodeCategory` (
  `CodeCategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(32) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CodeCategoryId`),
  UNIQUE KEY `CodeCategoryName_UNIQUE` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

USE biobank;
CREATE TABLE `Code` (
  `CodeId` int(11) NOT NULL AUTO_INCREMENT,
  `CodeName` varchar(32) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `CodeCategoryId` int(11) NOT NULL,
  `IsActive` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`CodeId`),
  UNIQUE KEY `CodeName_UNIQUE` (`CodeName`),
  KEY `FK_CodeCategory_idx` (`CodeCategoryId`),  
  CONSTRAINT `FK_CodeCategory` FOREIGN KEY (`CodeCategoryId`) REFERENCES `CodeCategory` (`CodeCategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

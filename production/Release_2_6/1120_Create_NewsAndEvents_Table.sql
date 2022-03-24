USE biobank;
CREATE TABLE `NewsAndEvents` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `ContentType` VARCHAR(16) NOT NULL,
  `ExpirationDate` DATETIME NOT NULL,
  `Title` VARCHAR(512) NOT NULL,
  `Author` VARCHAR(128) NULL,
  `Link` VARCHAR(1024) NOT NULL,
  `LastRevisedDate` DATETIME NOT NULL DEFAULT NOW(),
  `LastRevisedUser` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
);
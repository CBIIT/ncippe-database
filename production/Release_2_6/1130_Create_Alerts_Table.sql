USE biobank;
CREATE TABLE `Alert` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `ContentType` VARCHAR(16) NOT NULL,
  `DateCreated` DATETIME NOT NULL,
  `ExpirationDate` DATETIME NULL,
  `MessageEnglish` TEXT(8192) NOT NULL,
  `MessageSpanish` TEXT(8192) NULL,
  `LastRevisedDate` DATETIME NOT NULL DEFAULT NOW(),
  `LastRevisedUser` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
);
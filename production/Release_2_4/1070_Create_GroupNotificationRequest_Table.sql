USE biobank;
CREATE TABLE `GroupNotificationRequest` (
  `RequestId` INT NOT NULL AUTO_INCREMENT,
  `RequesterId` INT NOT NULL,
  `RequestDateTime` DATETIME NOT NULL DEFAULT NOW(),
  `MessageEnglish` TEXT(8192) NOT NULL,
  `MessageSpanish` TEXT(8192) NOT NULL,
  `SubjectEnglish` VARCHAR(255) NULL,
  `SubjectSpanish` VARCHAR(255) NULL,
  PRIMARY KEY (`RequestId`),
  CONSTRAINT `FK_GrpNotReq_RequesterId` FOREIGN KEY (`RequesterId`) REFERENCES `User` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
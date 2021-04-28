USE biobank;
CREATE TABLE `GroupNotificationRequest` (
  `RequestId` INT NOT NULL,
  `RequesterId` INT NOT NULL,
  `RequestDateTime` DATETIME NOT NULL DEFAULT NOW(),
  PRIMARY KEY (`RequestId`),
  CONSTRAINT `FK_GrpNotReq_RequesterId` FOREIGN KEY (`RequesterId`) REFERENCES `User` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
);
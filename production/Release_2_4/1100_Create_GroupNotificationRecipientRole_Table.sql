USE `biobank`;
CREATE TABLE `GroupNotificationRecipientRole` (
  `RequestId` INT NOT NULL,
  `RoleId` INT NOT NULL,
  PRIMARY KEY (`RequestId`, `RoleId`),
  CONSTRAINT `FK_GrpNotRcptRole_RequestId` FOREIGN KEY (`RequestId`) REFERENCES `GroupNotificationRequest` (`RequestId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_GrpNotRcptRole_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `Role` (`RoleId`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
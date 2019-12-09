USE biobank;
CREATE TABLE `User` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT,
  `UserUUID` varchar(36) DEFAULT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `PatientID` VARCHAR(20) DEFAULT NULL,
  `OpenCtepID` INT(11) NULL DEFAULT NULL,
  `PhoneNumber` varchar(10) DEFAULT NULL,
  `AllowEmailNotification` tinyint(4) NOT NULL DEFAULT '1',
  `RoleId` int(11) NOT NULL,
  `UserType` int(11) NOT NULL,
  `DateCreated` datetime NOT NULL DEFAULT NOW(),
  `DateActivated` DATETIME DEFAULT NULL,
  `PortalAccountStatusCodeId` int(11) NOT NULL,
  `IsActiveBiobankParticipant` tinyint(4) NULL DEFAULT '1',
  `DateDeactivated` DATETIME DEFAULT NULL,
  `LastRevisedDate` datetime NOT NULL DEFAULT NOW(),
  `LastRevisedUser` int(11) NULL,
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `email_UNIQUE` (`Email`),
  UNIQUE KEY `UserUUID_UNIQUE` (`UserUUID`),
  KEY `FK_LastReviseUser_idx` (`LastRevisedUser`),
  KEY `FK_UserType_idx` (`UserType`),
  KEY `FK_Role_idx` (`RoleId`),
  CONSTRAINT `FK_LastReviseUser` FOREIGN KEY (`LastRevisedUser`) REFERENCES `User` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Role` FOREIGN KEY (`RoleId`) REFERENCES `Role` (`RoleId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_UserType` FOREIGN KEY (`UserType`) REFERENCES `Code` (`CodeId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PortalAccountStatus` FOREIGN KEY (PortalAccountStatusCodeId) REFERENCES `Code` (`CodeId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

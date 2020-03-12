USE biobank;
CREATE TABLE `PortalNotification` (
  `PortalNotificationId` INT NOT NULL AUTO_INCREMENT,
  `MessageEnglish` VARCHAR(8192) NOT NULL,
  `MessageSpanish` VARCHAR(8192) NOT NULL,
  `DateGenerated` DATETIME NOT NULL DEFAULT NOW(),
  `UserId` INT NOT NULL,
  `ViewedByUser` TINYINT NOT NULL DEFAULT 0,
  `MessageFrom` VARCHAR(45) NULL,
  `Subject` VARCHAR(255) NULL,
  PRIMARY KEY (`PortalNotificationId`),
  INDEX `FK_NotificationUser_idx` (`UserId` ASC),
  CONSTRAINT `FK_NotificationUser`
    FOREIGN KEY (`UserId`)
    REFERENCES `User` (`UserId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

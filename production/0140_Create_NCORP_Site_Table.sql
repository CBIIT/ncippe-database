CREATE TABLE `biobank`.`NCORPSite` (
  `NCORPSiteId` INT NOT NULL AUTO_INCREMENT,
  `NCORPSiteName` VARCHAR(128) NOT NULL,
  `NCORPSiteStatusCodeId` INT(11) NOT NULL,
  `NCORPSiteContactAddressId` INT(11) NOT NULL,
  `LastRevisedDate` DATETIME NOT NULL DEFAULT NOW(),
  `LastRevisedUser` INT(11) NOT NULL,
  `NCORPSitePOCId` INT(11) NOT NULL,
  `ParentSiteId` INT(11) NULL,
  PRIMARY KEY (`NCORPSiteId`),
  INDEX `FK_NCORPSitePOCId_idx` (`NCORPSitePOCId` ASC) VISIBLE,
  INDEX `FK_NCORPSite_LastRevisedUserId_idx` (`LastRevisedUser` ASC) VISIBLE,
  CONSTRAINT `FK_NCORPSite_NCORPSiteContactAddressId` foreign key (`NCORPSiteContactAddressId`) references `ContactAddress` (`ContactAddressId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_NCORPSite_SitePOCId`
    FOREIGN KEY (`NCORPSitePOCId`)
    REFERENCES `biobank`.`NCORPSitePOC` (`NCORPSitePOCId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  constraint `FK_NCORPSite_SiteStatusCodeId` FOREIGN KEY (`NCORPSiteStatusCodeId`) REFERENCES `Code` (`CodeId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_NCORPSite_ParentSiteId`
    FOREIGN KEY (`ParentSiteId`)
    REFERENCES `biobank`.`NCORPSite` (`NCORPSiteId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_NCORPSite_LastRevisedUserId`
    FOREIGN KEY (`LastRevisedUser`)
    REFERENCES `biobank`.`User` (`UserId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
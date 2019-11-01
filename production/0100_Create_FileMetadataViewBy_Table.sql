USE biobank;
CREATE TABLE `FileMetaDataViewedBy` (
  `FileMetaDataId` INT NOT NULL,
  `ViewedByUserId` INT NOT NULL,
  INDEX `FK_FileMetadata_RMVB_idx` (`FileMetaDataId` ASC) VISIBLE,
  INDEX `FK_ViewedByUserId_RMVB_idx` (`ViewedByUserId` ASC) VISIBLE,
  PRIMARY KEY (`FileMetaDataId`, `ViewedByUserId`),
  CONSTRAINT `FK_FileMetadata_RMVB`
    FOREIGN KEY (`FileMetaDataId`)
    REFERENCES `FileMetadata` (`FileMetadataId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_ViewedByUserId_RMVB`
    FOREIGN KEY (`ViewedByUserId`)
    REFERENCES `User` (`UserId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

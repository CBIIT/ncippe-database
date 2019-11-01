USE biobank;
CREATE TABLE `FileMetadata` (
  `FileMetadataId` INT NOT NULL AUTO_INCREMENT,
  `FileGUID` VARCHAR(36) NOT NULL,
  `S3URL` VARCHAR(255) NOT NULL,
  `FileType` INT(11) NOT NULL,
  `FileName` VARCHAR(255) NOT NULL,
  `DateUploaded` DATETIME NOT NULL,
  `Source` VARCHAR(45) NOT NULL,
  `UploadedBy` INT NOT NULL,
  `PatientID` INT NOT NULL,
  `SearchKey` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`FileMetadataId`),
  UNIQUE INDEX `FileGUID_UNIQUE` (`FileGUID` ASC),
  INDEX `FK_UploadedBy_idx` (`UploadedBy` ASC),
  INDEX `FK_Patient_idx` (`PatientID` ASC),
  INDEX `FK_FileType` (`FileType`),
  CONSTRAINT `FK_FileType` 
	FOREIGN KEY (`FileType`) 
	REFERENCES `Code` (`CodeId`)
	ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_UploadedBy`
    FOREIGN KEY (`UploadedBy`)
    REFERENCES `User` (`UserId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_Patient`
    FOREIGN KEY (`PatientID`)
    REFERENCES `User` (`UserId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

use biobank;
CREATE TABLE `QuestionAnswer` (
  `QuestionAnswerId` INT NOT NULL AUTO_INCREMENT,
  `QuestionCategoryCodeId` INT NOT NULL,
  `QuestionOrder` INT NOT NULL,
  `Question` VARCHAR(512) NOT NULL,
  `Answer` VARCHAR(512)  NULL,
  `ParticipantId` INT NOT NULL,
  `DateAnswered` TIMESTAMP NOT NULL,
  PRIMARY KEY (`QuestionAnswerId`),
  UNIQUE INDEX `QuestionAnswerId_UNIQUE` (`QuestionAnswerId` ASC) VISIBLE,
  INDEX `FK_ParticipantId_idx` (`ParticipantId` ASC) VISIBLE,
  INDEX `FK_QuestionCategory_idx` (`QuestionCategoryCodeId` ASC) VISIBLE,
  CONSTRAINT `FK_ParticipantId`
    FOREIGN KEY (`ParticipantId`)
    REFERENCES `biobank`.`User` (`UserId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_QuestionCategory`
    FOREIGN KEY (`QuestionCategoryCodeId`)
    REFERENCES `biobank`.`Code` (`CodeId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

USE biobank;
CREATE TABLE `CRCParticipant` (
  `ParticipantId` int(11) NOT NULL,
  `CRCId` int(11) NOT NULL,
  PRIMARY KEY (`ParticipantId`),
  KEY `FK_Participant_idx` (`ParticipantId`),
  CONSTRAINT `FK_Participant_CRC` FOREIGN KEY (`ParticipantId`) REFERENCES `User` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_CRC` FOREIGN KEY (`CRCId`) REFERENCES `User` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ;

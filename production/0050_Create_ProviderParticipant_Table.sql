USE biobank;
CREATE TABLE `ProviderParticipant` (
  `ProviderId` int(11) NOT NULL,
  `ParticipantId` int(11) NOT NULL,
  PRIMARY KEY (`ProviderId`,`ParticipantId`),
  KEY `FK_Provider_idx` (`ProviderId`),
  KEY `FK_Participant_idx` (`ParticipantId`),
  CONSTRAINT `FK_Participant` FOREIGN KEY (`ParticipantId`) REFERENCES `User` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Provider` FOREIGN KEY (`ProviderId`) REFERENCES `User` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

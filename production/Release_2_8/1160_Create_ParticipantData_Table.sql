USE biobank;
DROP TABLE IF Exists `ParticipantData`;
CREATE TABLE `ParticipantData` (
  `SubjectID` int NOT NULL,
  `ParticipantID` varchar(16) NOT NULL,
  `SiteID` varchar(16) NOT NULL,
  `Site` varchar(150) NOT NULL,
  `Age` int DEFAULT NULL,
  `EnrolmentDate` date NOT NULL,
  `Ethnicity` varchar(128) DEFAULT NULL,
  `Sex` varchar(16) DEFAULT NULL,
  `Gender` varchar(16) DEFAULT NULL,
  `Race` varchar(128) DEFAULT NULL,
  `MoreThanOneRace` varchar(256) DEFAULT NULL,
  `MedDRADiseaseTerm` varchar(128) DEFAULT NULL,
  `EnrollingSiteID` varchar(128) NOT NULL,
  `ZipCode` int DEFAULT NULL,
  `LastRevisedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`SubjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

USE biobank;
CREATE TABLE NCORPSitePOC
(
    NCORPSitePOCId INT(11) NOT NULL PRIMARY KEY, -- primary key column
    POCName VARCHAR(128) NOT NULL,
    NCORPSitePOCContactAddressId INT(11) NOT NULL,
	LastRevisedDate datetime NOT NULL DEFAULT NOW(),
    LastRevisedUser int(11) NULL,
    CONSTRAINT `FK_NCORPSitePOC_LastReviseUser` FOREIGN KEY (`LastRevisedUser`) REFERENCES `User` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `FK_NCORPSitePOC_POCContactAddressId` foreign key (`NCORPSitePOCContactAddressId`) references `ContactAddress` (`ContactAddressId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
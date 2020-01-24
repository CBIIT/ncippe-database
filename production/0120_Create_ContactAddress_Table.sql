USE biobank;
CREATE TABLE ContactAddress
(
    ContactAddressId INT(11) NOT NULL PRIMARY KEY, -- primary key column
    StreetAddressLine1 VARCHAR(128) NOT NULL,
    StreetAddressLine2 VARCHAR(128)  NULL,
    City VARCHAR(32) NOT NULL,
    State VARCHAR(2) NOT NULL,
    ZipCode VARCHAR(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
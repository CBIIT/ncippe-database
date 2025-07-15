-- remove primary key and unique constraint (allow multi-to-multi CRC- participants)
ALTER TABLE `CRCParticipant` DROP PRIMARY KEY;

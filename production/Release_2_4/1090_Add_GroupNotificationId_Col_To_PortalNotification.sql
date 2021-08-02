ALTER TABLE
  biobank.PortalNotification
ADD
  COLUMN GroupNotificationRequestId INT NULL,
ADD
  FOREIGN KEY FK_PortalNotification_GrpNotifRequestId (`GroupNotificationRequestId`) REFERENCES `GroupNotificationRequest`(`RequestId`) ON DELETE NO ACTION ON UPDATE NO ACTION;
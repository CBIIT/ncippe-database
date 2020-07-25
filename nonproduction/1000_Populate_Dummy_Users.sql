USE biobank;
SET  @ppeAdminId = (SELECT Userid FROM User where UserUUID='e2ca34b5-8820-4dc3-b355-07d9b62f491b');   
SET @initiatedStatusCodeId = (select CodeId from Code Where CodeName='ACCT_ACTIVE');
SET @newStatusCodeId = (select CodeId from Code Where CodeName='ACCT_NEW');
SET @activeStatusCodeId = (select CodeId from Code Where CodeName='ACCT_ACTIVE');
INSERT INTO User (UserUUID, FirstName, LastName, Email, PatientID, PhoneNumber, AllowEmailNotification, RoleID, UserType, IsActiveBiobankParticipant, PreferredLanguage, PortalAccountStatusCodeId, LastRevisedDate, LastRevisedUser)
values
    (null, 'Mocha', 'Admin', 'ppe.mocha@aol.com', null, '3014434400', 1, 6, 6, 1, 'en', @initiatedStatusCodeId, NOW(), @ppeAdminId),
	(null, '', '', null, 'PN839364', '8277367364', 1, 1, 1, 1, 'en', @newStatusCodeId, NOW(),  @ppeAdminId),
    (null, 'Annie', 'Goodwin', 'testproviderone1@gmail.com', null, '8279864027', 1, 2, 2,1, 'en', @initiatedStatusCodeId, NOW(),  @ppeAdminId),
    (null, '', '', null, 'N8333201', '6289864005', 1, 1,1, 1, 'en', @newStatusCodeId, NOW(), @ppeAdminId),
    (null, 'Suhail', 'Dillard', 'testcrcone1@gmail.com', null, '7267689003', 1, 4,4, 1, 'en', @initiatedStatusCodeId, NOW(), @ppeAdminId),
    (null, '', '', null, 'A489746Z', '5168899565', 1, 1,1, 1, 'en', @newStatusCodeId, NOW(), @ppeAdminId),
    (null, '', '', null, '42624818', '6319847282', 1, 1,1, 1, 'en', @newStatusCodeId, NOW(), @ppeAdminId),
    (null, 'Corvalis', 'Kawasaki', 'TestUserNCIPPE@gmail.com', null, '2028767893', 1, 3,3, 1, 'en', @initiatedStatusCodeId, NOW(), @ppeAdminId);
    
insert into CRCParticipant (CRCId, ParticipantId) 
Values
( (select UserId from User Where Email='testcrcone1@gmail.com'), (select UserId from User where PatientID='N8333201')),
( (select UserId from User Where Email='testcrcone1@gmail.com'), (select UserId from User where PatientID='PN839364')),
( (select UserId from User Where Email='testcrcone1@gmail.com'), (select UserId from User where PatientID='A489746Z')),
( (select UserId from User Where Email='testcrcone1@gmail.com'), (select UserId from User where PatientID='42624818'));

insert into ProviderParticipant (ProviderId, ParticipantId)
Values 
( (select UserId from User Where Email='testproviderone1@gmail.com'), (select UserId from User where PatientID='N8333201')),
( (select UserId from User Where Email='testproviderone1@gmail.com'), (select UserId from User where PatientID='PN839364')),
( (select UserId from User Where Email='testproviderone1@gmail.com'), (select UserId from User where PatientID='A489746Z')),
( (select UserId from User Where Email='testproviderone1@gmail.com'), (select UserId from User where PatientID='42624818'));


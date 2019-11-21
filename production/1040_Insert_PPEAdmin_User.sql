USE biobank;
insert into User (UserUUID, FirstName, LastName, Email,  RoleId, UserType, PortalAccountStatusCodeId )
Values ( NULL, 'PPE', 'SYSTEM', NULL,  (select RoleId from Role where RoleName='ROLE_PPE_ADMIN'), (select CodeId from Code where CodeName='PPE_ADMIN'), (select CodeId from Code Where CodeName='ACCT_ACTIVE'));
set @ppeadminId =  LAST_INSERT_ID();
update User set LastRevisedUser=@ppeadminId Where UserId=@ppeadminId;

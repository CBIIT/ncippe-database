USE biobank;
insert into CodeCategory (Name, Description) 
values
	( 'USER_TYPE', 'Allowed types of Users in the PPE Portal'),
	( 'FILE_TYPE', 'Allowed types of Files that can be uploaded into Portal'),
	( 'PORTAL_ACCOUNT_STATUS', 'Status Codes for the state of the Portal Account'),
    ( 'QUESTION_GROUP_TYPE', 'Survey Question Category codes');

USE biobank;
set @codeCategoryId = (select CodeCategoryId from CodeCategory where Name='USER_TYPE');
insert into Code (CodeId, CodeName, Description, CodeCategoryId, IsActive)
values 
	(1, 'PPE_PARTICIPANT', 'Project Participant', @codeCategoryId, 1 ),
    (2, 'PPE_PROVIDER', 'HealthCare Provider for Project Participant',  @codeCategoryId, 1 ),
    (3, 'PPE_ADMIN', 'Administrator of the PPE Portal', @codeCategoryId, 1),
    (4, 'PPE_CRC', 'Clinical Research Coordinator', @codeCategoryId, 1 ),
    (5, 'PPE_BSSC', 'BioSpecimen Sample Site Coordinator', @codeCategoryId, 1 ),
    (6, 'PPE_MOCHA_ADMIN', 'Mocha admin who can upload test results', @codeCategoryId, 1),
    (7, 'PPE_CONTENT_EDITOR', 'PPE Content Editor', @codeCategoryId, 1);
	
set @codeCategoryId = (select CodeCategoryId from CodeCategory where Name='FILE_TYPE');	
insert into Code (CodeId, CodeName, Description, CodeCategoryId, IsActive)
values 
	(101, 'PPE_FILETYPE_BIOMARKER_REPORT', 'Biomarker Report for participants', @codeCategoryId, 1),
	(102,  'PPE_FILETYPE_ECONSENT_FORM', 'eConsent Form for participants', @codeCategoryId, 1);

set @codeCategoryId = (select CodeCategoryId from CodeCategory where Name='PORTAL_ACCOUNT_STATUS');
INSERT INTO Code (CodeId, CodeName, Description, CodeCategoryId, IsActive)
values
	(201, 'ACCT_NEW', 'Account has been entered in the system from OPEN', @codeCategoryId, 1),
	(202, 'ACCT_INITIATED', 'Account has been initiated by CRC (via OPEN) but has not been activated by User', @codeCategoryId, 1),
    (203, 'ACCT_ACTIVE', 'Account has been activated by User via Login.Gov', @codeCategoryId, 1),
    (204, 'ACCT_TERMINATED_AT_PPE', 'Account has been terminated at PPE Portal', @codeCategoryId, 1),
    (205, 'ACCT_TERMINATED_AT_LOGIN_GOV', 'The login.gov account associated with the user has been terminated ', @codeCategoryId, 1);

set @codeCategoryId = (select CodeCategoryId from CodeCategory where Name='QUESTION_GROUP_TYPE');
insert into Code (CodeId, CodeName, Description, CodeCategoryId, IsActive)
values
	(301, 'PPE_WITHDRAW_SURVEY_QUESTION', 'Survey questions to be asked when patient is withdrawn from biobank participation', @codeCategoryId, 1);

SET @codeCategoryId = (select CodeCategoryId from CodeCategory where Name='NCORP_SITE_STATUS_TYPE');
INSERT INTO Code (CodeId, CodeName, Description, CodeCategoryId, IsActive)
VALUES
	(401, 'PENDING', 'NCORP Site is pending acceptance into protocol', @codeCategoryId, 1),
    (402, 'ACTIVE', 'NCORP Site is actively participating in protocol', @codeCategoryId, 1),
    (403, 'WITHDRAWN', 'NCORP Site is no longer participating in protocol', @codeCategoryId, 1);
    
    

USE biobank;
insert into Role (RoleName, Description)
values
	( 'ROLE_PPE_PARTICIPANT', 'Project Participant Role' ),
    ( 'ROLE_PPE_PROVIDER', 'Project Participant\'s HealthCare Provider Role ' ),
    ( 'ROLE_PPE_ADMIN', 'PPE Portal Administrator Role'),
    ( 'ROLE_PPE_CRC', 'Clinical Research Coordinator Role ' ),
    ( 'ROLE_PPE_BSSC', 'BioSpecimen Sample Site Coordinator Role' ),
    ( 'ROLE_PPE_MOCHA_ADMIN', 'Mocha admin who can upload results'),
    ( 'ROLE_PPE_CONTENT_EDITOR', 'PPE Content Editor');

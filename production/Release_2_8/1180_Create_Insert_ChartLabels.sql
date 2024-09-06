USE biobank;
DROP TABLE IF Exists `ChartLabels`;

CREATE TABLE `ChartLabels` ( 
`id` int NOT NULL AUTO_INCREMENT,   
`Chart` varchar(64) NOT NULL,   
`EnglishValue` varchar(64) NOT NULL,   
`label` varchar(128) DEFAULT NULL ,
primary key (`id`))	;

DELETE FROM biobank.ChartLabels;
INSERT INTO biobank.ChartLabels
(Chart, EnglishValue, Label)
values
('Cancer Demographics', 'Colon Cancer', 'charts.chart_data.PatientDemographics.ColonCancer.label'),
('Cancer Demographics', 'Multiple Myeloma', 'charts.chart_data.PatientDemographics.MultipleMyeloma.label'),
('Cancer Demographics', 'Melanoma', 'charts.chart_data.PatientDemographics.Melanoma.label'),
('Cancer Demographics', 'Gastroesophageal Cancer', 'charts.chart_data.PatientDemographics.GastroesophagealCancer.label'),
('Cancer Demographics', 'Lung Cancer', 'charts.chart_data.PatientDemographics.LungCancer.label'),
('Cancer Demographics', 'Acute Myeloid Leukemia', 'charts.chart_data.PatientDemographics.AcuteMyeloid.label'),
('Cancer Demographics', 'Prostate Cancer', 'charts.chart_data.PatientDemographics.ProstateCancer.label'),
('Cancer Demographics', 'Breast Cancer', 'charts.chart_data.PatientDemographics.BreastCancer.label'),
('Cancer Demographics', 'Ovarian Cancer', 'charts.chart_data.PatientDemographics.OvarianCancer.label'),
('Race Demographics', 'White', 'charts.chart_data.PatientDemographicsRace.White.label'),
('Race Demographics', 'Asian', 'charts.chart_data.PatientDemographicsRace.Asian.label'),
('Race Demographics', 'Black or African American', 'charts.chart_data.PatientDemographicsRace.BlackOrAfricanAmerican.label'),
('Race Demographics', 'Native Hawaiian or other Pacific Islander', 'charts.chart_data.PatientDemographicsRace.NativeHawaiianOrOtherPacificIslander.label'),
('Race Demographics', 'American Indian or Alaska Native', 'charts.chart_data.PatientDemographicsRace.AmericanIndianOrAlaskaNative.label'),
('Race Demographics', 'Not Reported', 'charts.chart_data.PatientDemographicsRace.NotReported.label'),
('Race Demographics', 'Unknown', 'charts.chart_data.PatientDemographicsRace.Unknown.label'),
('Race Demographics', 'More Than One Race', 'charts.chart_data.PatientDemographicsRace.MoreThanOneRace.label'),
('Sex Demographics', 'Male', 'charts.chart_data.PatientDemographicsSex.Male.label'),
('Sex Demographics', 'Female', 'charts.chart_data.PatientDemographicsSex.Female.label'),
('Ethnicity Demographics', 'Hispanic or Latino', 'charts.chart_data.PatientDemographicsEthnicity.HispanicOrLatino.label'),
('Ethnicity Demographics', 'Not Hispanic or Latino', 'charts.chart_data.PatientDemographicsEthnicity.NotHispanicOrLatino.label'),
('Ethnicity Demographics', 'Not Reported', 'charts.chart_data.PatientDemographicsEthnicity.NotReported.label'),
('Ethnicity Demographics', 'Unknown', 'charts.chart_data.PatientDemographicsEthnicity.Unknown.label'),
('Area Demographics','Rural','charts.chart_data.PatientDemographicsArea.Rural.label'),
('Area Demographics','Urban','charts.chart_data.PatientDemographicsArea.Urban.label'),
('ParticipantBioMarkers','Participants','charts.chart_data.PatientDemographicsParticipantBio.Participants.label'),
('ParticipantBioMarkers', 'Blood Samples', 'charts.chart_data.PatientDemographicsParticipantBio.BloodSamples.label'),
('ParticipantBioMarkers','Tumor Samples','charts.chart_data.PatientDemographicsParticipantBio.TumorSamples.label');

commit;



/*
*  v2.8 has new table : 
*       ParticipantData, ChartLabels, 
*       PrimaryRUCACodeDescription, SpecimenData, ZipCodes
*
*  data views: ParticpantWithCancerType, 
* 
* create views for Charts data in study progress
*  AgeDemographicsView
*  ChartDataView
*  ProjectSummaryView
*/
USE biobank;

DROP VIEW if exists `ParticpantWithCancerType`;
CREATE VIEW `ParticpantWithCancerType` AS
    SELECT `pd`.* ,
      (CASE
            WHEN (`pd`.`MedDRADiseaseTerm` = 'Colorectal Carcinoma') THEN 'Colon Cancer'
            WHEN (`pd`.`MedDRADiseaseTerm` = 'Non-Small Cell Lung Carcinoma') THEN 'Lung Cancer'
            WHEN (`pd`.`MedDRADiseaseTerm` = 'Small Cell Lung Carcinoma') THEN 'Lung Cancer'
            WHEN (`pd`.`MedDRADiseaseTerm` = 'Colon Adenocarcinoma') THEN 'Colon Cancer'
            WHEN (`pd`.`MedDRADiseaseTerm` = 'Plasma Cell Myeloma') THEN 'Multiple Myeloma'
            WHEN (`pd`.`MedDRADiseaseTerm` = 'Acute Myeloid Leukemia Not Otherwise Specified') THEN 'Acute Myeloid Leukemia'
            WHEN (`pd`.`MedDRADiseaseTerm` = 'Prostate Carcinoma') THEN 'Prostate Cancer'
            WHEN (`pd`.`MedDRADiseaseTerm` = 'Adenocarcinoma of the Gastroesophageal Junction') THEN 'Gastroesophageal Cancer'
            WHEN (`pd`.`MedDRADiseaseTerm` = 'Esophageal Carcinoma') THEN 'Gastroesophageal Cancer'
            WHEN (`pd`.`MedDRADiseaseTerm` = 'Invasive Breast Carcinoma') THEN 'Breast Cancer'
            WHEN (`pd`.`MedDRADiseaseTerm` = 'Ovarian Carcinoma') THEN 'Ovarian Cancer'
            WHEN (`pd`.`MedDRADiseaseTerm` = 'Gastric Carcinoma') THEN 'Gastroesophageal Cancer'
            WHEN (`pd`.`MedDRADiseaseTerm` = 'Fallopian Tube Carcinoma') THEN 'Ovarian Cancer'
            ELSE `pd`.`MedDRADiseaseTerm`
        END) AS `CancerType`
    FROM
        `ParticipantData` `pd`;

DROP VIEW if exists `AgeDemographicsView`;
CREATE VIEW `AgeDemographicsView` AS
    SELECT 
    ROW_NUMBER() OVER (ORDER BY count) as id, a.* from (
      SELECT  (CASE
            WHEN (`pd`.`Age` < 20) THEN '< 20'
            WHEN ((`pd`.`Age` >= 20) AND (`pd`.`Age` < 30)) THEN '20-29'
            WHEN ((`pd`.`Age` >= 30) AND (`pd`.`Age` < 40)) THEN '30-39'
            WHEN ((`pd`.`Age` >= 40) AND (`pd`.`Age` < 50)) THEN '40-49'
            WHEN ((`pd`.`Age` >= 50) AND (`pd`.`Age` < 60)) THEN '50-59'
            WHEN ((`pd`.`Age` >= 60) AND (`pd`.`Age` < 70)) THEN '60-69'
            WHEN ((`pd`.`Age` >= 70) AND (`pd`.`Age` < 80)) THEN '70-79'
            WHEN ((`pd`.`Age` >= 80) AND (`pd`.`Age` < 90)) THEN '80-89'
            WHEN (`pd`.`Age` >= 90) THEN '>=90'
        END) AS `AgeGroup`,
        COUNT((CASE
            WHEN (`pd`.`Age` < 20) THEN '< 20'
            WHEN ((`pd`.`Age` >= 20) AND (`pd`.`Age` < 30)) THEN '20-29'
            WHEN ((`pd`.`Age` >= 30) AND (`pd`.`Age` < 40)) THEN '30-39'
            WHEN ((`pd`.`Age` >= 40) AND (`pd`.`Age` < 50)) THEN '40-49'
            WHEN ((`pd`.`Age` >= 50) AND (`pd`.`Age` < 60)) THEN '50-59'
            WHEN ((`pd`.`Age` >= 60) AND (`pd`.`Age` < 70)) THEN '60-69'
            WHEN ((`pd`.`Age` >= 70) AND (`pd`.`Age` < 80)) THEN '70-79'
            WHEN ((`pd`.`Age` >= 80) AND (`pd`.`Age` < 90)) THEN '80-89'
            WHEN (`pd`.`Age` >= 90) THEN '>=90'
        END)) AS `Count`
    FROM
        `ParticipantData` `pd`
    GROUP BY `AgeGroup`
    ORDER BY `AgeGroup` ) as a  ORDER BY `AgeGroup` ;

DROP VIEW if exists `ChartDataView`;
CREATE VIEW `ChartDataView` AS
 /* -- cancer types  chart data --- */
    SELECT 
        *
    FROM
        (SELECT 
            `cl`.`id` AS `id`,
                `cl`.`chart` AS `chart`,
                `pdct`.`CancerType` AS `Type`,
                COUNT(`pdct`.`CancerType`) AS `Count`,
                `cl`.`label` AS `Label`
        FROM
            (`ParticpantWithCancerType` `pdct`
        JOIN `ChartLabels` `cl`)
        WHERE
            ((`pdct`.`CancerType` = `cl`.`EnglishValue`)
                AND (`cl`.`Chart` = 'Cancer Demographics'))
        GROUP BY `pdct`.`CancerType`
        ORDER BY `Count` DESC) AS A
    WHERE 1 = 1 
    UNION 
     /* -- Race  chart data --- */
    SELECT 
        *
    FROM
        (SELECT 
            `cl`.`id` AS `id`,
                `cl`.`chart` AS `chart`,
                `pd`.`Race` AS `Race`,
                COUNT(`pd`.`Race`) AS `Num Particpants`,
                `cl`.`label` AS `label`
        FROM
            `ParticipantData` `pd`
        JOIN `ChartLabels` `cl`
        WHERE
            ((`pd`.`Race` = `cl`.`EnglishValue`)
                AND (`cl`.`Chart` = 'Race Demographics'))
        GROUP BY `pd`.`Race`
        ORDER BY COUNT(`pd`.`Race`) DESC) AS b
    WHERE 1 = 1 
    UNION 
     /* -- Ethnicity  chart data --- */
    SELECT 
        *
    FROM
        (SELECT 
            `cl`.`id` AS `id`,
                `cl`.`chart` AS `chart`,
                `pd`.`Ethnicity` AS `Ethnicity`,
                COUNT(`pd`.`Ethnicity`) AS `Num Particpants`,
                `cl`.`label` AS `label`
        FROM
            (`ParticipantData` `pd`
        JOIN `ChartLabels` `cl`)
        WHERE
            ((`pd`.`Ethnicity` = `cl`.`EnglishValue`)
                AND (`cl`.`Chart` = 'Ethnicity Demographics'))
        GROUP BY `pd`.`Ethnicity`
        ORDER BY 'Num Paricipants' DESC) AS c
    WHERE 1 = 1 
    UNION 
     /* -- Area rural urban chart data --- */
    SELECT 
        *
    FROM
        (SELECT 
            `cl`.`id` AS `id`,
                `cl`.`chart` AS `chart`,
                `rc`.`CodeLabel` AS `Type`,
                COUNT(`pd`.`ZipCode`) AS `Count`,
                `cl`.`label` AS `Label`
        FROM
            (((`ParticipantData` `pd`
        JOIN `ZipCodes` `zc`)
        JOIN `PrimaryRUCACodeDescription` `rc`)
        JOIN `ChartLabels` `cl`)
        WHERE
            ((`pd`.`ZipCode` = `zc`.`ZIP_CODE`)
                AND (`zc`.`RUCA1` = `rc`.`RUCA1`)
                AND (`rc`.`CodeLabel` = `cl`.`EnglishValue`)
                AND (`cl`.`Chart` = 'Area Demographics'))
        GROUP BY `rc`.`CodeLabel`
        ORDER BY `rc`.`CodeLabel` DESC) AS d
    WHERE 1 = 1 
    UNION 
     /* -- sex  chart data --- */
    SELECT 
        `cl`.`id` AS `id`,
        `cl`.`chart` AS `chart`,
        `pd`.`Sex` AS `Sex`,
        COUNT(`pd`.`Sex`) AS `Num Participants`,
        `cl`.`label` AS `label`
    FROM
        (`ParticipantData` `pd`
        JOIN `ChartLabels` `cl`)
    WHERE
        ((`pd`.`Sex` = `cl`.`EnglishValue`)
            AND (`cl`.`Chart` = 'Sex Demographics'))
    GROUP BY `pd`.`Sex` 
    UNION
     /* -- Partipant Biomarker  chart data --- */
    SELECT 
        `cl`.`id` AS `id`,
        `cl`.`chart` AS `chart`,
        type,
        count,
        `cl`.`label` AS `label`
    FROM
        (SELECT 
            'Participants' AS Type,
                COUNT(DISTINCT `pd`.`SubjectID`) AS count
        FROM
            `ParticipantData` `pd` 
        UNION 
        SELECT 
            'Blood Samples', COUNT(DISTINCT `sd`.`SpecimenID`)
        FROM
            `SpecimenData` `sd`
        WHERE
            (`sd`.`SpecimenCategory` = 'Blood') 
        UNION 
        SELECT 
            'Tumor Samples', COUNT(DISTINCT `sd`.`SpecimenID`)
        FROM
            `SpecimenData` `sd`
        WHERE
            `sd`.`SpecimenCategory` <> 'Blood') AS src
    JOIN
        `ChartLabels` `cl`
    WHERE
        (`src`.`Type` = `cl`.`EnglishValue`
            AND `cl`.`Chart` = 'ParticipantBioMarkers');

DROP VIEW if exists `ProjectSummaryView`;
CREATE VIEW `ProjectSummaryView` AS
    -- Participants, sites, cancertype, returned biomaker tests
 SELECT 
    ROW_NUMBER() OVER (ORDER BY LastRevisedDate) as id, a.* from (
select count(distinct pd.SubjectID) as 'ParticipantsCount', count(distinct pd.Site) as 'SitesCount',  
count(distinct pd.CancerType) as 'CancerTypesCount',  
(select count(distinct sd.SubjectID)  from SpecimenData sd where sd.DateOfUploadResults is NOT NULL) as 'BiomarkerReturnedCount' ,
max(LastRevisedDate) AS LastRevisedDate
from ParticpantWithCancerType pd ) AS a where 1=1;

CREATE  VIEW `ProjectSummaryView` AS 
SELECT row_number() OVER (ORDER BY `a`.`LastRevisedDate` )  AS `id`,
`a`.`ParticipantsCount` AS `ParticipantsCount`,
`a`.`SitesCount` AS `SitesCount`,
`a`.`CancerTypesCount` AS `CancerTypesCount`,
`a`.`BiomarkerReturnedCount` AS `BiomarkerReturnedCount`,
`a`.`LastRevisedDate` AS `LastRevisedDate` 
FROM (
    SELECT count(distinct `pd`.`SubjectID`) AS `ParticipantsCount`,
    count(distinct `pd`.`Site`) AS `SitesCount`,
    count(distinct `pd`.`CancerType`) AS `CancerTypesCount`,
    (SELECT count(distinct `sd`.`SubjectID`) FROM `SpecimenData` `sd` 
    WHERE (`sd`.`DateOfUploadResults` is not null)) AS `BiomarkerReturnedCount`,
    max(`pd`.`LastRevisedDate`) AS `LastRevisedDate` 
    FROM `ParticpantWithCancerType` `pd`) `a` 
WHERE (1 = 1);

-- end 



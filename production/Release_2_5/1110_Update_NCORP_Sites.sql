

DELETE FROM biobank.NCORPSite WHERE NCORPSiteId IN 
(
    180, -- IA005, Blank Children's Hospital
    215  -- NE022, CHI Health Saint Francis
);

-- Add new Sites
INSERT INTO biobank.NCORPSite 
(`CTEPId`,`NCORPSiteName`,`StreetAddressLine1`,`StreetAddressLine2`,`City`,`State`,`ZipCode`,`POCName`,`POCEmail`,`PhoneNumber`,`Website`,`Latitude`,`Longitude`, `IsActive`,`LastRevisedUser`)
VALUES
("LA004","Children's Hospital New Orleans","200 Henry Clay Avenue","","New Orleans","Louisiana","70118","Robert Uddo","Robert.Uddo@LCMChealth.org","(504) 894-5377","https://www.chnola.org/","29.91794002","-90.12776368", 1, 1),
("LA007","Ochsner Medical Center Jefferson","1514 Jefferson Highway","","New Orleans","Louisiana","70121","Lyndsey Buckner Baiamonte","lyndsey.bucknerbaiamonte@ochsner.org","(504) 842-8197","https://www.ochsner.org/locations/ochsner-medical-center/","29.96138045","-90.14587823", 1, 1),
("LA017","LSU Health Sciences Center at Shreveport","1501 Kings Highway","","Shreveport","Louisiana","71103","J. Karen Miller","janet.miller@lsuhs.edu","(318) 813-1406","https://www.ochsnerlsuhs.org/feist-weiller-cancer-center","32.48148232","-93.75921613", 1, 1),
("LA029","University Medical Center New Orleans","2000 Canal Street","","New Orleans","Louisiana","70112","Eileen Mederos","emede1@lsuhsc.edu","(504) 210-3539","https://www.umcno.org/","29.95986968","-90.08132998", 1, 1),
("LA045","East Jefferson General Hospital","4200 Houma Boulevard","","Metairie","Louisiana","70006","Eileen Mederos","emede1@lsuhsc.edu","(504) 210-3539","http://www.ejgh.org/","30.0136151","-90.18131521", 1, 1),
("LA074","Our Lady of the Lake Physician Group","5000 Hennessy Boulevard","","Baton Rouge","Louisiana","70808","Cyndi Knox","cyndi.knox@fmolhs.org ","(225) 765-3344","https://ololrmc.com","30.40362224","-91.10785109", 1, 1),
("LA101","Louisiana Hematology Oncology Associates LLC","4950 Essen Lane Suite 500","","Baton Rouge","Louisiana","70809","Cyndi Knox","cyndi.knox@fmolhs.org ","(225) 765-3344","https://ololrmc.com/services/cancer-care/cancer-treatment-options/hematology-and-oncology","30.40387818","-91.10494355", 1, 1),
("NV056","Carson Tahoe Cancer Center","1600 Medical Parkway","","Carson City","Nevada","89703","Carson Tahoe Cancer Center","clinicaltrials@carsontahoe.org","(775) 445-7604","https://www.carsontahoe.com/","39.20211411","-119.7847638", 1, 1),
("NY024","NYP/Columbia University Medical Center/Herbert Irving Comprehensive Cancer Center","630 West 168th Street","","New York","New York","10032","Dana Breashears","cancerclinicaltrials@cumc.columbia.edu","(212) 342-5162","http://hiccc.columbia.edu/","40.84097626","-73.94338751", 1, 1),
("SC095","Gibbs Cancer Center-Gaffney","724 Hyatt Street","","Gaffney","South Carolina","29341","Melyssa Foust","mfoust@gibbscc.org","(864) 560-1035","https://www.spartanburgregional.com/locations/gibbs-cancer-center-research-institute-gaffney","35.07602308","-81.6887512", 1, 1),
("SC109","MGC Hematology Oncology-Union","407 West South Street","","Union","South Carolina","29379","Melyssa Foust","mfoust@gibbscc.org","(864) 560-1035","https://www.spartanburgregional.com/locations/medical-group-carolinas-hematology-oncology-union","34.71007597","-81.63033986", 1, 1),
("WA043","North Star Lodge Cancer Center at Yakima Valley Memorial Hospital","808 North 39th Avenue","","Yakima","Washington","98902","Beth Parker","bethparker@yvmh.org","(509) 574-3493","https://www.northstarlodge.org/","46.61208109","-120.5611631", 1, 1);

-- UPDATE Sites
UPDATE biobank.NCORPSite SET PhoneNumber = '(805) 474-9143', LastRevisedUser = 1, LastRevisedDate = NOW() WHERE CTEPId = 'CA384';
UPDATE biobank.NCORPSite SET PhoneNumber = '(515) 241-3305', POCName = 'Missy Stravers', POCEmail = 'mstravers@iora.org', LastRevisedUser = 1, LastRevisedDate = NOW() WHERE CTEPId = 'IA072';

UPDATE biobank.NCORPSite SET PhoneNumber = '(256) 541-1068', POCName = 'Jamie Saunders', POCEmail = 'JGSaunders@mmc.org', LastRevisedUser = 1, LastRevisedDate = NOW() 
WHERE CTEPId IN ('ME010',
'ME022',
'ME031',
'ME035',
'ME037',
'ME046',
'ME048',
'ME049',
'ME050',
'ME051',
'ME052',
'ME054',
'ME055');

UPDATE biobank.NCORPSite SET PhoneNumber = '(405) 752-3392', POCName = 'Beverly Roy', POCEmail = 'Beverly.Roy@Mercy.net', LastRevisedUser = 1, LastRevisedDate = NOW() 
WHERE CTEPId IN ('MO051', 'MO097', 'MO183');
UPDATE biobank.NCORPSite SET PhoneNumber = '(816) 271-2635', POCName = 'Carri Gilmour', POCEmail = 'Carri.Gilmour@mymlc.com', LastRevisedUser = 1, LastRevisedDate = NOW() 
WHERE CTEPId = 'MO056';
UPDATE biobank.NCORPSite SET PhoneNumber = '(973) 971-6359', POCName = 'Michelle Williams', POCEmail = 'michelle.williams@atlantichealth.org', LastRevisedUser = 1, LastRevisedDate = NOW() 
WHERE CTEPId IN ('NJ054','NJ246');
UPDATE biobank.NCORPSite SET PhoneNumber = '(702) 384-0013', POCName = 'Trinh Tran', POCEmail = 't.tran@sncrf.org', LastRevisedUser = 1, LastRevisedDate = NOW() 
WHERE CTEPId IN ('NV028', 'NV034','NV043', 'NV080', 'NV107', 'NV108', 'NV112', 'NV113');
UPDATE biobank.NCORPSite SET PhoneNumber = '(864) 455-6721', POCName = 'Harrison Albo', POCEmail = 'Harrison.Albo2@PrismaHealth.org', LastRevisedUser = 1, LastRevisedDate = NOW() 
WHERE CTEPId = 'SC045';
UPDATE biobank.NCORPSite SET PhoneNumber = '(804) 628-0960', POCName = 'Natasha Titus', POCEmail = 'castellanosn@vcu.edu', LastRevisedUser = 1, LastRevisedDate = NOW() 
WHERE CTEPId IN ('VA010', 'VA025');
UPDATE biobank.NCORPSite SET PhoneNumber = '', POCName = '', POCEmail = '', LastRevisedUser = 1, LastRevisedDate = NOW() 
WHERE CTEPId = '';
UPDATE biobank.NCORPSite SET PhoneNumber = '(425) 690-3503', POCName = 'Dione Froman', POCEmail = 'Dione_Froman@Valleymed.org', LastRevisedUser = 1, LastRevisedDate = NOW() 
WHERE CTEPId = 'WA004';
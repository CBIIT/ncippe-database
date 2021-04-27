DELETE FROM `biobank`.`NCORPSite`;
INSERT INTO `biobank`.`NCORPSite`
(`CTEPId`, `NCORPSiteName`, `StreetAddressLine1`, `StreetAddressLine2`, `City`, `State`, `ZipCode`, `POCName`,`POCEmail`,`PhoneNumber`, `Website`,`Latitude`,`Longitude`, `IsActive`,`LastRevisedUser`)
VALUES
("AZ076","Kingman Regional Medical Center","3269 Stockton Hill Rd",NULL,"Kingman","Arizona","86049","Diana Lalitsasivimol","Diana.Lalitsasivimol@azkrmc.com","(928) 263-3869",NULL, 35.219818, -114.037457, 1, 1),

("AR012","Mercy Hospital Fort Smith","7301 Rogers Avenue",NULL,"Fort Smith","Arkansas","72903","Manuel Gonzalez"," Manuel.Gonzalez2@Mercy.net","(479) 314-5089","https://ozarkscancerresearch.org", 35.3565026, -94.3531812, 1, 1),

("CA384", "PCR Oncology", "584 Camino Mercado", NULL, "Arroyo Grande", "California", "93420", "Ruth Mares", "ruth@pcroncology.com", "(702) 384-0013", NULL, "35.129634", " -120.599708", 1, 1),

("GA106","Nancy N. and J.C. Lewis Cancer & Research Pavilion","225 Candler Drive",NULL,"Savannah","Georgia","31405","Joni Shortt","shorttj@sjchs.org ","(912) 819-5789","https://www.gancorp.org/default.aspx", 32.0283757, -81.1022564, 1, 1),
("GA031","Northside Hospital","1000 Johnson Ferry Road Northeast",NULL,"Atlanta","Georgia","30342","Julia Decker","Julie.decker@northside.com","(404) 780-7070","https://www.gancorp.org/default.aspx", 33.90851, -84.3533804, 1, 1),

("IL168","Carle Cancer Center","509 West University Avenue",NULL,"Urbana","Illinois","61801","Joshua Ward","Joshua.ward@carle.com","(217) 383-4011","https://carle.org/services/cancer",40.1161183, -88.2142389, 1, 1),
("IL045","Carle on Vermilion","2300 North Vermilion Street",NULL,"Danville","Illinois","61832","Samantha Wright","Samantha.wright@carle.com","(217) 431-7657","https://carle.org/services/cancer",40.1638233, -87.6316593, 1, 1),
("IL393","Carle Physician Group-Mattoon/Charleston","2512 Hurst Drive",NULL,"Mattoon","Illinois","61938","Joshua Ward","Joshua.ward@carle.com","(217) 383-4011","https://carle.org/services/cancer", 39.4822359, -88.305365, 1, 1),
("IL148","Good Samaritan Regional Health Center", "1 Good Samaritan Way'", NULL, "Mount Vernon", "Illinois", "62864", "Gayla Hall", "Gayla.Hall@SSMHealth.com", "(618) 899-1894", NULL, 38.297287, -88.938898, 1, 1),
("IL042","John H Stroger Jr Hospital of Cook County","1969 W. Ogden Avenue",NULL,"Chicago","Illinois","60612","Namrata Batra","nbatra@cookcountyhhs.org","(312) 864-7254","https://chicagomuncorp.org",41.872963, -87.673250, 1, 1),
("IL094","Decatur Memorial Hospital", "2300 North Edwards Street", NULL, "Decatur", "Illinois", "62526","JoEllyn Curran", "curran.jo@mhsil.com", "(217) 876-4768", NULL, 39.866987, -88.961489, 1, 1),
("IL185", "Cancer Care Specialists of Illlinois - Decatur", "210 West McKinley Avenue", "Suite 1", "Decatur", "Illinois", "62526", "JoEllyn Curran", "curran.jo@mhsil.com", NULL, "(217) 876-4768", 39.870727, -88.958660, 1, 1),

("IA004","UnityPoint Health - Iowa Methodist Medical Center","1200 Pleasant Street",NULL,"Des Moines","Iowa","50309","Missy Stravers","mstravers@iora.org","(515) 241-3305","http://www.iora.org",41.589149, -93.6338247, 1, 1),
("IA072","Medical Oncology & Hematology Associates","1221 Pleasant Street","Ste 100","Des Moines","Iowa","50309","Jeanne Noble","jnoble@mercycare.org","(319) 363-2690","http://www.iora.org",41.589149, -93.6338247, 1, 1),
("IA066","Physicians' Clinic of Iowa","202 10th Street SE",NULL,"Cedar Rapids","Iowa","52403","Samantha Gage","samantha.gage@unitypoint.org","(319) 369-7775","http://www.iora.org",41.9834764, -91.6583072, 1, 1),
("IA005","Blank Children's Hospital","1200 Pleasant Street",NULL,"Des Moines","Iowa","50309","Kelly Wilson","Kelly.Wilson2@unitypoint.org","(515) 241-8072",NULL, 41.589149, -93.6338247, 1, 1),
("IA024","Oncology Associates at Mercy Medical Center","701 10th Street SE",NULL,"Cedar Rapids","Iowa","52403","Jeanne Noble","jnoble@mercycare.org","(319) 363-2690","http://www.iora.org",41.9780945, -91.6557271, 1, 1),
("IA003","McFarland Clinic PC - Ames", "1215 Duff Avenue", NULL, "Ames", "Iowa", "50010", "Kris Soder", "ksoder@mcfarlandclinic.com", "(515) 239-4734", NULL, 42.033768, -93.612082, 1, 1),

("ME002","Maine Children’s Cancer Program","100 Campus Drive","Suite 107","Scarborough","Maine","04074","Jillian Fergione","JFergione@mmc.org","(207) 396-7579",NULL,43.6003835, -70.3176959, 1, 1),
("ME010","Maine Medical Center – Bramhall Campus","22 Bramhall Street",NULL,"Portland","Maine","04102","Jamie Saunders","JGSaunders@mmc.org","(207) 396-8321",NULL,43.6532195, -70.2751785, 1, 1),
("ME022","Penobscot Bay Medical Center","6 Glen Cove Drive",NULL,"Rockport","Maine","04856","Lindsay Ford","LFord@pbmc.org","(207) 301-8959",NULL,44.1440102, -69.0852218, 1, 1),
("ME031","MaineHealth/SMHC Cancer Care and Blood Disorders-Biddeford","26A West Cole Road","Suite 102","Biddeford","Maine","04005","Jennifer Dalton","jdalton@mmc.org","(207) 294-8291",NULL,43.4790415, -70.487671, 1, 1),
("ME035","MaineHealth/SMHC Cancer Care and Blood Disorders-Sanford","27 Industrial Avenue","Suite 101","Sanford","Maine","04073","Jennifer Dalton","jdalton@mmc.org","(207) 294-8291",NULL,43.4036356, -70.703043, 1, 1),
("ME037","Harold Alfond Center for Cancer Care","361 Old Belgrade Road","MaineGeneral Medical Center","Augusta","Maine","04330","Sandra Neptune","sandra.neptune@mainegeneral.org","(207) 626-4811",NULL,44.363485, -69.7849926, 1, 1),
("ME046","Waldo County General Hospital","118 Northport Avenue",NULL,"Belfast","Maine","04915","Lindsay Ford","LFord@pbmc.org","(207) 301-8959", NULL,44.4126255, -68.9942489, 1, 1),
("ME048","Maine Medical Partners-South Portland","265 Western Avenue","Suite 2","South Portland","Maine","04106","Kim Caron","kacaron@mmc.org","(207) 662-2456",NULL,43.638946, -70.323832, 1, 1),
("ME049","Stephens Memorial Hospital","181 Main Street",NULL,"Norway","Maine","04268","Jamie Saunders","JGSaunders@mmc.org","(207) 396-8321",NULL,44.2095554, -70.5324363, 1, 1),
("ME050","Maine Medical Partners Urology","100 Brickhill Avenue",NULL,"South Portland","Maine","04106","Jamie Saunders","JGSaunders@mmc.org","(207) 396-8321",NULL,43.6377842, -70.308092, 1, 1),
("ME051","Maine Medical Partners Neurology","49 Spring Street",NULL,"Scarborough","Maine","04074","Jamie Saunders","JGSaunders@mmc.org","(207) 396-8321",NULL,43.6249174, -70.3456376, 1, 1),
("ME052","Franklin Memorial Hospital","111 Franklin Health Commons",NULL,"Farmington","Maine","04938","Sandra Neptune","sandra.neptune@mainegeneral.org","(207) 626-4811",NULL,44.6261394, -70.1632104, 1, 1),
("ME054","Maine Medical Partners Surgical Care","887 Congress Street","Suite 400","Portland","Maine","04102","Jamie Saunders","JGSaunders@mmc.org","(207) 396-8321",NULL,43.6547166, -70.2770342, 1, 1),
("ME055","Maine Medical Partners Surgical Care-Casco Bay","10 Andover Road",NULL,"Portland","Maine","04102","Jamie Saunders","JGSaunders@mmc.org","(207) 396-8321",NULL,43.6547166, -70.2770342, 1, 1),

("MI132","Spectrum Health at Butterworth Campus","100 Michigan Street Northeast","MC001","Grand Rapids","Michigan","49503","Janet Haworth","janet.haworth@crcwm.org","(616) 391-1230","http://www.crcwm.org",42.969485, -85.6649995, 1, 1),
("MI221","Saint Joseph Mercy Brighton","7575 Grand River Road",NULL,"Brighton","Michigan","48114","Joan Aresco","Joan.Aresco@stjoeshealth.org","(743) 712-3304","http://www.mcrconline.org",42.5679883, -83.8027953, 1, 1),
("MI327","Saint Joseph Mercy Chelsea","775 South Main Street",NULL,"Chelsea","Michigan","48118","Joan Aresco","Joan.Aresco@stjoeshealth.org","(743) 712-3304","http://www.mcrconline.org",42.3100294, -84.0169076, 1, 1),
("MI013","Saint Joseph Mercy Hospital","5301 McAuley Dr",NULL,"Ypsilanti","Michigan","48197","Joan Aresco","Joan.Aresco@stjoeshealth.org","(743) 712-3304","http://www.mcrconline.org",42.266194, -83.655367, 1, 1),
("MI294","Saint Joseph Mercy Canton","1600 South Canton Center Road",NULL,"Canton","Michigan","48188","Joan Aresco","Joan.Aresco@stjoeshealth.org","(743) 712-3304","http://www.mcrconline.org",42.2943097, -83.4880629, 1, 1),

("MO042","CoxHealth South Hospital","3801 South National Avenue",NULL,"Springfield","Missouri","65807","Sharman Moser","Sharman.Moser@coxhealth.com","(417) 269-7125","https://ozarkscancerresearch.org", 37.1448079, -93.2803564, 1, 1),
("MO056","Heartland Regional Medical Center","5325 Faraon Street",NULL,"Saint Joseph","Missouri","64506","Jessica Yingling","Jessica.Yingling@mymlc.com","(816) 271-7237","https://ozarkscancerresearch.org", 39.7732177, -94.7710179, 1, 1),
("MO052","Delbert Day Cancer Institute at PCRMC","1060 West Tenth Street",NULL,"Rolla","Missouri","65401","Katy McMillian","kmcmillian@phelpshealth.org","(573) 458-7504","https://ozarkscancerresearch.org", 37.9514373, -91.7862708, 1, 1),
("MO043","Mercy Hospital Springfield","1235 Cherokee",NULL,"Springfield","Missouri","65804","Erin McCaig","Erin.McCaig@Mercy.net","(417) 820-8092","https://ozarkscancerresearch.org", 37.1792234, -93.2740805, 1, 1),
("MO034","Mercy Hospital Joplin","100 Mercy Way",NULL,"Joplin","Missouri","64804","Leah Klink","leah.klink@mercy.net","(417) 556-3980","https://ozarkscancerresearch.org", 37.0363859, -94.5095979, 1, 1),
("MO185","Mercy Clinic-Rolla-Cancer and Hematology","1605 Martin Springs Drive","Suite 150","Rolla","Missouri","65401","Beverly Roy","Beverly.Roy@Mercy.net","(405) 752-3392","https://ozarkscancerresearch.org", 37.9402904, -91.7970853, 1, 1),
("MO097","Mercy Hospital South","10010 Kennerly Road",NULL,"Saint Louis","Missouri","63128","Janet Lesko","Janet.Lesko@Mercy.Net","(314)-525-5928","https://ozarkscancerresearch.org", 38.5070559, -90.380164, 1, 1),
("MO021","Mercy Hospital Saint Louis","615 South New Ballas Road",NULL,"Saint Louis","Missouri","63141","Alesia Bell","Alesia.Bell@Mercy.Net","(314) 251-7993","https://ozarkscancerresearch.org", 38.6439938, -90.4465938, 1, 1),
("MO131","Saint Louis Cancer and Breast Institute-Ballwin","15945 Clayton Road",NULL,"Ballwin","Missouri","63011","Laura Boekemeier","Laura.Boekemeier@Mercy.net","(314) 251-7066","https://ozarkscancerresearch.org", 38.6054548, -90.5883044, 1, 1),
("MO051","Saint Louis Cancer and Breast Institute-South City","6435 Chippewa Street",NULL,"Saint Louis","Missouri","63109","Erin Cattoor","Erin.Cattoor@Mercy.Net","(314) 251-7066","https://ozarkscancerresearch.org", 38.5938029, -90.2996204, 1, 1),
("MO183","Mercy Hospital Washington","901 E. Fifth Street",NULL,"Washington","Missouri","63090","Erin Cattoor","Erin.Cattoor@Mercy.Net","(314) 251-7066","https://ozarkscancerresearch.org", 38.552000, -91.000533, 1, 1),
("MO049", "Freeman Health System", "1102 West 32nd Street", NULL, "Joplin", "Missouri", "64804", "Kasha Wilson", "KNWilson@FreemanHealth.com", "(417) 347-4030", NULL, 37.051730, -94.527430, 1, 1),
("MO046","Missouri Baptist Medical Center","3015 North Ballas Road",NULL,"Saint Louis","Missouri","63131","Christopher B. Sanders","chris.sanders@bjc.org","(217) 876-4755","http://heartlandncorp.com/", 38.6362225, -90.44652, 1, 1),

("NE022","CHI Health Saint Francis","2620 West Faidley Avenue",NULL,"Grand Island","Nebraska","68803","Mary Gulzow","mgulzow@sfmc-gi.org","(308) 398-6518", NULL, 40.9258317, -98.3716607, 1, 1),
("NE022","CHI Health Saint Francis","2727 West 2nd Street", "Suite 314","Hastings","Nebraska","68901","Mary Gulzow","mgulzow@sfmc-gi.org","(308) 398-6519", NULL, 40.584710, -98.418828, 1, 1),

("NV028","Comprehensive Cancer Centers of Nevada - Central Valley","3730 South Eastern Avenue",NULL,"Las Vegas","Nevada","89169","Nia Walker", "n.walker@sncrf.org","(702) 384-0013","http://www.sncrf.org", 36.1210521, -115.1182286, 1, 1),
("NV080","OptumCare Cancer Care at Fort Apache","6190 South Fort Apache Road",NULL,"Las Vegas","Nevada","89148","Kyle Apilado", "k.apilado@sncrf.org","(702) 384-0013","http://www.sncrf.org", 36.0760099, -115.297002, 1, 1),
("NV108","OptumCare Cancer Care at Oakey","2300 West Charleston Boulevard",NULL,"Las Vegas","Nevada","89102","Kyle Apilado", "k.apilado@sncrf.org","(702) 384-0013","http://www.sncrf.org", 36.1592762, -115.1733267, 1, 1),
("NV034","Alliance for Childhood Diseases/Cure 4 the Kids Foundation","1 Breakthrough Way","Suite 200","Las Vegas","Nevada","89135","Diamond Rozek", "d.rozek@sncrf.org","(702) 384-0013","http://www.sncrf.org", 36.121212, -115.3210372, 1, 1),
("NV043","Comprehensive Cancer Centers of Nevada","9280 West Sunset Road","Suite 100","Las Vegas","Nevada","89148","Nia Walker","n.walker@sncrf.org","(702) 384-0013","http://www.sncrf.org", 36.071835, -115.2947321, 1, 1),
("NV107", "Hope Cancer Care of Nevada", "6827 W. Tropicana Ave", "Suite 110","Las Vegas","Nevada","89103","Kyle Apilado", "k.apilado@sncrf.org","(702) 384-0013","http://hccnevada.com", 36.098517, -115.240453, 1, 1),
("NV112","OptumCare Cancer Care at Seven Hills", "3175 St. Rose Pkwy.", "Suite 200", "Henderson", "Nevada",	"89052","Kyle Apilado", "k.apilado@sncrf.org","(702) 384-0013", NULL, 35.999194, -115.124210, 1, 1),
("NV113", "Comprehensive Cancer Centers of Nevada - Town Center", "653 N. Town Center Drive", "Suite 402", "Las Vegas","Nevada","89144","Nia Walker", "n.walker@sncrf.org","(702) 384-0013", NULL, 36.180987, -115.315466, 1,1),

("NJ028","Morristown Medical Center","100 Madison Avenue",NULL,"Morristown","New Jersey","07960","Michelle Williams","michelle.williams@atlantichealth.org","(973) 971-6359",NULL,40.7896261, -74.4655683, 1, 1),
("NJ026","Overlook Medical Center","99 Beauvoir Avenue",NULL,"Summit","New Jersey","07901","Michelle Williams","michelle.williams@atlantichealth.org","(973) 971-6359",NULL,40.7121248, -74.3536189, 1, 1),
("NJ246","Newton Memorial Hospital","175 High Street",NULL,"Newton","New Jersey","07860","Cynthia Orlowicz","Cynthia.orlowicz@atlantichealth.org","(973) 971-6359",NULL,41.0578686, -74.7682688, 1, 1),
("NJ054","Chilton Memorial Hospital","97 West Parkway",NULL,"Pompton","New Jersey","07444","Cynthia Orlowicz","Cynthia.orlowicz@atlantichealth.org","(973) 971-6359",NULL,40.9584504, -74.3091575, 1, 1),

("NY043","Montefiore Medical Center-Weiler Hospital","1825 Eastchester Road",NULL,"Bronx","New York","10461","Anton Lulaj", "alulaj@montefiore.org","(718) 862-8840","https://www.montefiore.org/cancer",40.8491013, -73.8461857, 1, 1),
("NY045","Montefiore Medical Center-Moses Campus","111 East 210th Street",NULL,"Bronx","New York","10467","Anton Lulaj", "alulaj@montefiore.org","(718) 862-8840","https://www.montefiore.org/cancer",40.8807854, -73.8794877, 1, 1),
("NY313","Montefiore Medical Center - Einstein Campus","1695 Eastchester Road",NULL,"Bronx","New York","10461","Anton Lulaj", "alulaj@montefiore.org","(718) 862-8840","https://www.montefiore.org/cancer", 40.8462711, -73.8451691, 1, 1),
("NY327","Children’s Hospital at Montefiore","3415 Bainbridge Avenue",NULL,"Bronx","New York"," 10467","Anton Lulaj", "alulaj@montefiore.org","(718) 862-8840","https://www.montefiore.org/cancer",40.880273, -73.8791699, 1, 1),

("NC047","Novant Health Forsyth Medical Center","3333 Silas Creek Parkway",NULL,"Winston-Salem","North Carolina"," 27103","Susan S. Tuttle","stuttle@southeastclinicaloncology.org","(336) 448-1422","https://southeastclinicaloncology.org", 36.0764435, -80.2965697, 1, 1),
("NC019","Novant Health Presbyterian Medical Center","200 Hawthorne Lane",NULL,"Charlotte","North Carolina","28204","Susan S. Tuttle","stuttle@southeastclinicaloncology.org","(336) 448-1422","https://southeastclinicaloncology.org", 35.2121606, -80.8239542, 1, 1),
("NC081","FirstHealth of the Carolinas-Moore Regional Hospital","155 Memorial Drive",NULL,"Pinehurst","North Carolina","28374","Julie Williams, PhD, MPH","jcwilliams@firsthealth.org","(910) 715-1922","https://southeastclinicaloncology.org", 35.2050674, -79.4566766, 1, 1),

("OK010","Mercy Hospital Oklahoma City","4300 West Memorial Road",NULL,"Oklahoma City","Oklahoma","73120","Trisha Strubhar","Trisha.Strubhar@Mercy.net","(405) 752-3401","https://ozarkscancerresearch.org", 35.606813, -97.5994803, 1, 1),

("PR046","Centro Comprensivo de Cancer de UPR","Avenida De Diego 89","Suite 105, PO BOX 363027","San Juan","Puerto Rico","00936","Johnsue Medina","jmedina@cccupr.org","(787) 936-1477",NULL, 18.3839167, -66.0725404, 1, 1),
("PR016","San Juan City Hospital","Centro Medico Street","Hematology -Oncology Office (basement),","San Juan","Puerto Rico","00921","Lilith Serrano","serrano.lilith@sanjuanccop.org","(787) 763-1296",NULL, 18.395143, -66.074079, 1, 1),
("PR021","I Gonzales Martinez-Oncologic Hospital","Centro Medico, Barrio Monacillos", "Box 1811","San Juan","Puerto Rico","00936","Johnsue Medina","jmedina@cccupr.org","(787) 936-1477",NULL, 18.3948628, -66.0721797, 1, 1),
("PR024","San Juan Community Oncology Group","735 Avenida Ponce De leon", "Torre Medica Auxilio Mutuo Oficina 515-517","San Juan","Puerto Rico","00919","Olga Rodriguez","rodriguez.olga@sanjuanccop.org","(787) 763-1296",NULL, 18.409306, -66.050834, 1, 1),

("SC045","Prisma Health Greenville Memorial Hospital","701 Grove Road",NULL,"Greenville","South Carolina","29605","Marianne McCoig","Marianne.McCoig@PrismaHealth.org","(864) 455-6723","https://upstatecarolinancorp.org", 34.8630526, -82.2188726, 1, 1),
("SC003","Prisma Health Richland Hospital","5 Richland Medical Park Dr",NULL,"Columbia","South Carolina","29203","Kimberly P. Williams","kim.williams3@prismahealth.org","(864) 522-2066",NULL, 34.028037, -81.033680, 1, 1),
("SC006","Prisma Health Baptist Hospital","Taylor at Marion St",NULL,"Columbia","South Carolina","29220","Kimberly P. Williams","kim.williams3@prismahealth.org","(864) 522-2067",NULL, 34.007370, -81.033097, 1, 1),
("SC024","Spartanburg Medical Center","101 East Wood Street",NULL,"Spartanburg","South Carolina","29303","Melyssa Foust","mfoust@gibbscc.org ","(864) 560-1035",NULL, 34.966910, -81.939495, 1, 1),
("SC101","Gibbs Cancer Center-Pelham","2759 SC-14",NULL,"Greer","South Carolina","29651","Melyssa Foust","mfoust@gibbscc.org ","(864) 560-1035","https://upstatecarolinancorp.org", 34.862002, -82.219397, 1, 1),

("VA010","Virginia Commonwealth University/Massey Cancer Center","401 College Street",NULL,"Richmond","Virginia","23298","Alexia Thomson","ajohnson84@vcu.edu","(804) 628-0348","https://www.vcu.edu/", 37.5393153, -77.4284666, 1, 1),
("VA034","Centra Lynchburg Hematology-Oncology Clinic Inc","1701 Thomson Drive","Alan B Pearson Regional Cancer Center, Suite 200","Lynchburg","Virginia","24501","Ellen Boling","Ellen.Boling@Centrahealth.com","(434) 200-1495","https://www.vcu.edu/", 37.4127269, -79.171448, 1, 1),
("VA205","VCU Massey Cancer Center at Stony Point", "9000 Stony Point Parkway", NULL, "Richmond","Virginia","23235", "Chelsey N. Summers", "csummers@vcu.edu", "(804) 828-5097", NULL, 37.552918, -77.564945, 1, 1),

("WA004", "Valley Medical Center", "400 S 43rd St.", NULL, "Renton", "Washington", "98055", "Dione Froman",	"Dione_Froman@Valleymed.org", "(702) 384-0013", NULL, 47.443481, -122.213595, 1, 1),

("WI009","Marshfield Clinic-Minocqua Center","9601 Townline Road",NULL,"Minocqua","Wisconsin","54548","Alexa Hurley","hurley.alexa@marshfieldresearch.org","(715) 393-1019","http://memorialmedcenter.org/",45.8896018, -89.7113259, 1, 1),
("WI031","Marshfield Medical Center-Marshfield","1000 North Oak Avenue",NULL,"Marshfield","Wisconsin","54449","Alexa Hurley","hurley.alexa@marshfieldresearch.org","(715) 393-1019","http://memorialmedcenter.org/",44.6776871, -90.1772674, 1, 1),
("WI109","Marshfield Medical Center-Rice Lake","1700 West Stout Street",NULL,"Rice Lake","Wisconsin","54868","Alexa Hurley","hurley.alexa@marshfieldresearch.org","(715) 393-1019","http://memorialmedcenter.org/",45.5065323, -91.7595124, 1, 1),
("WI144","Marshfield Clinic-Weston Center","3501 Cranberry Boulevard",NULL,"Weston","Wisconsin","54476","Alexa Hurley","hurley.alexa@marshfieldresearch.org","(715) 393-1019","http://memorialmedcenter.org/",44.891101, -89.579536, 1, 1),
("WI210","Marshfield Clinic Stevens Point Center","4100 State Highway 66",NULL,"Stevens Point","Wisconsin","54482","Alexa Hurley","hurley.alexa@marshfieldresearch.org","(715) 393-1019","http://memorialmedcenter.org/",44.543151, -89.543585, 1, 1),
("WI208","Marshfield Clinic- Eau Claire Center","2200 Craig Road",NULL,"Eau Claire","Wisconsin","54701","Alexa Hurley","hurley.alexa@marshfieldresearch.org","(715) 393-1019","http://memorialmedcenter.org/", 44.796525, -91.519953, 1, 1),
("WI129","Marshfield Clinic-Wisconsin Rapids Center", "220 24th Street South", NULL, "Wisconsin Rapids", "Wisconsin", "54494","Alexa Hurley","hurley.alexa@marshfieldresearch.org","(715) 393-1019", NULL, 44.387025, -89.798588, 1, 1),
("WI011","Aurora Saint Luke's Medical Center","2900 W Oklahoma Ave",NULL,"Milwaukee","Wisconsin","53215","Karen Cheek","karen.cheek@aurora.org","(414) 778-4345",NULL, 42.989680, -87.950456, 1, 1);
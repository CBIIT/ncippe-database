USE biobank;
-- test to add new shared pdf file 
-- file to be checked in at the aws site

SELECT * FROM biobank.NewsAndEvents;
insert into biobank.NewsAndEvents values ( 998, 'news', '2024-06-02 00:00:00','2034-01-01 00:00:00',
'2016-NCIBestPractices.pdf', null, 'https://moonshotbiobank-dev.cancer.gov/assets/documents/2016-NCIBestPractices.pdf', '2024-07-02 00:00:00',1
);
commit;
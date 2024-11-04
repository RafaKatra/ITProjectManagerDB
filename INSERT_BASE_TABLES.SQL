INSERT INTO EMPLOYEE_CATEGORIES ("Description") VALUES ('DEVELOPER');
INSERT INTO EMPLOYEE_CATEGORIES ("Description") VALUES ('OWNER');
INSERT INTO EMPLOYEE_CATEGORIES ("Description") VALUES ('MANAGER');

INSERT INTO PROJECTS_STATUS ("Description") VALUES ('ON PROGRESS');
INSERT INTO PROJECTS_STATUS ("Description") VALUES ('CANCEL');
INSERT INTO PROJECTS_STATUS ("Description") VALUES ('COMPLETED');

INSERT INTO COUNTRIES ("Description") values ('Greece');

INSERT INTO STATES ("Description","Country") values ('Attica',1);
insert into STATES ("Description","Country") values ('Thessaloniki',1);

insert into TOWNS ("Description","State") values ('Athens',1);
insert into TOWNS ("Description","State") values ('Kifisia',1);
insert into TOWNS ("Description","State") values ('Faliro',1);

insert into TOWNS ("Description","State") values ('Thessaloniki Center',2);
insert into TOWNS ("Description","State") values ('Toumpa',2);
insert into TOWNS ("Description","State") values ('Epanomi',2);
insert into TOWNS ("Description","State") values ('Charilaou',2);


INSERT INTO CUSTOMERS_CATEGORIES ("Description") values ('BIG SIZE');
INSERT INTO CUSTOMERS_CATEGORIES ("Description") values ('SMALL SIZE');
INSERT INTO CUSTOMERS_CATEGORIES ("Description") values ('MEDIUM SIZE');


INSERT INTO EMPLOYEES ("Name","Employee_Category","Street","Area","ZipCode","Country","State","Town","Phone","Email","Salary","Hour_Salary") 
Select 'TZANIS TASOS',"Oid",'PATISION 10','PAGKRATI','11523',1,1,1,'2102926587','TZANIS@G-LOGIC.GR',3000,15 from EMPLOYEE_CATEGORIES WHERE "Description"='OWNER';

INSERT INTO EMPLOYEES ("Name","Employee_Category","Street","Area","ZipCode","Country","State","Town","Phone","Email","Salary","Hour_Salary") 
Select 'GEORGIADIS NIKOS',"Oid",'KIFISIAS 5','PSICHIKO','13523',1,1,2,'2106815574','GN@G-LOGIC.GR',2000,10 from EMPLOYEE_CATEGORIES WHERE "Description"='MANAGER';

INSERT INTO EMPLOYEES ("Name","Employee_Category","Street","Area","ZipCode","Country","State","Town","Phone","Email","Salary","Hour_Salary") 
Select 'GATES BILL',"Oid",'SOROU 20','MAROUSI','11523',1,1,3,'2105566985','BG@G-LOGIC.GR',1500,8 from EMPLOYEE_CATEGORIES WHERE "Description"='DEVELOPER';

INSERT INTO EMPLOYEES ("Name","Employee_Category","Street","Area","ZipCode","Country","State","Town","Phone","Email","Salary","Hour_Salary") 
Select 'ELON MUSK',"Oid",'ALEXANDROU 3','KALLITHEA','11523',1,2,4,'2103366547','EM@G-LOGIC.GR',1800,9 from EMPLOYEE_CATEGORIES WHERE "Description"='DEVELOPER';


INSERT INTO CUSTOMERS ("Name","VatNumber","TaxOffice","Street","Area","ZipCode","Country","State","Town","Phone","Email","Customers_Category")
select 'DELTA','992233459','ATHESNS FAEE','L.KIFISIAS 23','ATHENS','11233',1,1,1,'2109922345','INFO@DELTA.GR',"Oid" from CUSTOMERS_CATEGORIES WHERE "Description" ='SMALL SIZE';

INSERT INTO CUSTOMERS ("Name","VatNumber","TaxOffice","Street","Area","ZipCode","Country","State","Town","Phone","Email","Customers_Category")
select 'KOTSOVOLOS A.E.','995578789','ATHESNS FAEE','L.PLAPOUTA 2','NEO IRAKLIO','11233',1,1,2,'2106352417','INFO@KOTSOVOLOS.GR',"Oid" from CUSTOMERS_CATEGORIES WHERE "Description" ='MEDIUM SIZE';

INSERT INTO CUSTOMERS ("Name","VatNumber","TaxOffice","Street","Area","ZipCode","Country","State","Town","Phone","Email","Customers_Category")
select 'PLAISIO A.E.','334433454','ATHENS FAEE','PLASTIRA 2','KIFISIA','11233',1,2,5,'2102255445','INFO@PLAISIO.GR',"Oid" from CUSTOMERS_CATEGORIES WHERE "Description" ='MEDIUM SIZE';

INSERT INTO CUSTOMERS ("Name","VatNumber","TaxOffice","Street","Area","ZipCode","Country","State","Town","Phone","Email","Customers_Category")
select 'LIDL','334342345','ATHESNS FAEE','AEROPAGITOY 15','ATHENS','11233',1,2,6,'2310545698','INFO@LIDL.GR',"Oid" from CUSTOMERS_CATEGORIES WHERE "Description" ='BIG SIZE';

INSERT INTO CUSTOMERS ("Name","VatNumber","TaxOffice","Street","Area","ZipCode","Country","State","Town","Phone","Email","Customers_Category")
select 'AMAZON','258963654','ATHESNS FAEE','MITROPOULOU 7','ATHENS','11233',1,2,7,'2741056985','INFO@AMAZON.GR',"Oid" from CUSTOMERS_CATEGORIES WHERE "Description" ='BIG SIZE';

commit;
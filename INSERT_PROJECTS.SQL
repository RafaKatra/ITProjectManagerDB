
INSERT INTO PROJECTS ("Description","Customer","FromDate","EndDate","Project_Status","Active","Budget")
values ('Project Number 1',1,'01-03-2022','10-05-2022',1,1,10000);

INSERT INTO EMPLOYEES_PROJECTS ("Project","Employee") values (1,1);
INSERT INTO EMPLOYEES_PROJECTS ("Project","Employee") values (1,2);

INSERT INTO PROJECT_CONTACTS ("Project","Employee") values (1,3);
insert into PROJECT_CONTACTS ("Project","Employee") values (1,4);

insert into LEADS ("Date","Title","Project","Employee","Remark")
    values ('01-02-2022','MEETING FOR THE PROJECT',1,3,'DISCUSS ABOUT THE PROJECT');

INSERT INTO LEADS_STATUS ("Project_Status","Remark","Leads","Project")
    values (1,'STARTING',1,1);
   


insert into SUBPROJECTS ("Description","Project","StartDate","EndDate","Completed") values ('Sub Project 1-1',1,'01-03-2022','15-03-2022',0);
insert into SUBPROJECTS ("Description","Project","StartDate","EndDate","Completed") values ('Sub Project 1-2',1,'15-03-2022','20-03-2022',0);
insert into SUBPROJECTS ("Description","Project","StartDate","EndDate","Completed") values ('Sub Project 1-3',1,'21-03-2022','10-04-2022',0);
insert into SUBPROJECTS ("Description","Project","StartDate","EndDate","Completed") values ('Sub Project 1-4',1,'11-04-2022','20-04-2022',0);
insert into SUBPROJECTS ("Description","Project","StartDate","EndDate","Completed") values ('Sub Project 1-5',1,'21-04-2022','10-05-2022',0);

insert into TASKS ("Description","SubProject","Date","Work_Hours","Remark","Employee") values ('Task1',1,'01-03-2022',10,'',1);
insert into TASKS ("Description","SubProject","Date","Work_Hours","Remark","Employee") values ('Task2',1,'02-03-2022',10,'',1);
insert into TASKS ("Description","SubProject","Date","Work_Hours","Remark","Employee") values ('Task3',2,'10-03-2022',10,'',2);
insert into TASKS ("Description","SubProject","Date","Work_Hours","Remark","Employee") values ('Task4',2,'15-04-2022',10,'',1);
insert into TASKS ("Description","SubProject","Date","Work_Hours","Remark","Employee") values ('Task5',3,'20-04-2022',10,'',2);
insert into TASKS ("Description","SubProject","Date","Work_Hours","Remark","Employee") values ('Task6',3,'02-05-2022',10,'',1);
insert into TASKS ("Description","SubProject","Date","Work_Hours","Remark","Employee") values ('Task7',4,'06-05-2022',10,'',2);
insert into TASKS ("Description","SubProject","Date","Work_Hours","Remark","Employee") values ('Task8',5,'10-05-2022',10,'',1);


INSERT INTO PROJECTS ("Description","Customer","FromDate","EndDate","Project_Status","Active","Budget")
values ('Project Number 2',2,'01-04-2022','10-06-2022',1,1,12000);

INSERT INTO EMPLOYEES_PROJECTS ("Project","Employee") values (2,3);
INSERT INTO EMPLOYEES_PROJECTS ("Project","Employee") values (2,4);

INSERT INTO PROJECT_CONTACTS ("Project","Employee") values (2,1);
insert into PROJECT_CONTACTS ("Project","Employee") values (2,2);

insert into LEADS ("Date","Title","Project","Employee","Remark")
    values ('01-03-2022','MEETING FOR THE PROJECT',2,1,'MEETING IN THEIR OFFICE');

INSERT INTO LEADS_STATUS ("Project_Status","Remark","Leads","Project")
    values (2,'',2,2);
   


insert into SUBPROJECTS ("Description","Project","StartDate","EndDate","Completed") values ('Sub Project 2-1',2,'01-04-2022','15-04-2022',0);
insert into SUBPROJECTS ("Description","Project","StartDate","EndDate","Completed") values ('Sub Project 2-2',2,'15-04-2022','20-04-2022',0);
insert into SUBPROJECTS ("Description","Project","StartDate","EndDate","Completed") values ('Sub Project 2-3',2,'21-04-2022','10-05-2022',0);
insert into SUBPROJECTS ("Description","Project","StartDate","EndDate","Completed") values ('Sub Project 2-4',2,'11-05-2022','20-05-2022',0);
insert into SUBPROJECTS ("Description","Project","StartDate","EndDate","Completed") values ('Sub Project 2-5',2,'21-05-2022','10-06-2022',0);

insert into TASKS ("Description","SubProject","Date","Work_Hours","Remark","Employee") values ('Task1',6,'01-04-2022',10,'',3);
insert into TASKS ("Description","SubProject","Date","Work_Hours","Remark","Employee") values ('Task2',6,'02-04-2022',10,'',3);
insert into TASKS ("Description","SubProject","Date","Work_Hours","Remark","Employee") values ('Task3',7,'10-04-2022',10,'',4);
insert into TASKS ("Description","SubProject","Date","Work_Hours","Remark","Employee") values ('Task4',7,'15-04-2022',10,'',4);
insert into TASKS ("Description","SubProject","Date","Work_Hours","Remark","Employee") values ('Task5',8,'20-05-2022',10,'',4);
insert into TASKS ("Description","SubProject","Date","Work_Hours","Remark","Employee") values ('Task6',9,'02-06-2022',10,'',3);
insert into TASKS ("Description","SubProject","Date","Work_Hours","Remark","Employee") values ('Task7',8,'06-06-2022',10,'',3);
insert into TASKS ("Description","SubProject","Date","Work_Hours","Remark","Employee") values ('Task8',10,'10-06-2022',10,'',4);


INSERT INTO PROJECTS ("Description","Customer","FromDate","EndDate","Project_Status","Active","Budget")
values ('Project Number 3',3,'01-05-2022','10-05-2022',2,0,8000);

INSERT INTO EMPLOYEES_PROJECTS ("Project","Employee") values (3,4);
INSERT INTO PROJECT_CONTACTS ("Project","Employee") values (3,1);
insert into PROJECT_CONTACTS ("Project","Employee") values (3,2);

insert into LEADS ("Date","Title","Project","Employee","Remark")
    values ('01-02-2022','MEETING FOR THE PROJECT',3,1,'MPLA MPLA MPLA');

INSERT INTO LEADS_STATUS ("Project_Status","Remark","Leads","Project")
    values (3,'cancel then project because is too expensive',3,3);



INSERT INTO PROJECTS ("Description","Customer","FromDate","EndDate","Project_Status","Active","Budget")
values ('Project Number 4',4,'01-08-2022','10-09-2022',2,0,18000);


insert into LEADS ("Date","Title","Project","Employee","Remark")
    values ('01-02-2022','MEETING FOR THE PROJECT',3,1,'MPLA MPLA MPLA');

INSERT INTO LEADS_STATUS ("Project_Status","Remark","Leads","Project")
    values (3,'cancel then project because is too expensive',3,3);
      

INSERT INTO EMPLOYEES_PROJECTS ("Project","Employee") values (4,4);

INSERT INTO PROJECT_CONTACTS ("Project","Employee") values (4,2);
insert into PROJECT_CONTACTS ("Project","Employee") values (4,3);

insert into LEADS ("Date","Title","Project","Employee","Remark")
    values ('01-03-2022','MEETING FOR THE PROJECT',4,2,'MPLA MPLA');

INSERT INTO LEADS_STATUS ("Project_Status","Remark","Leads","Project")
    values (2,'',4,4);
   



INSERT INTO PROJECTS ("Description","Customer","FromDate","EndDate","Project_Status","Active","Budget")
values ('Project Number 4',5,'01-01-2022','10-03-2022',2,0,22000);

INSERT INTO EMPLOYEES_PROJECTS ("Project","Employee") values (5,4);

INSERT INTO PROJECT_CONTACTS ("Project","Employee") values (5,2);
insert into PROJECT_CONTACTS ("Project","Employee") values (5,1);

insert into LEADS ("Date","Title","Project","Employee","Remark")
    values ('01-03-2022','MEETING FOR THE PROJECT',5,1,'MPLA MPLA');

INSERT INTO LEADS_STATUS ("Project_Status","Remark","Leads","Project")
    values (2,'',5,5);
COMMIT;
create or replace NONEDITIONABLE trigger "BI_EMPLOYEES_CHECK_EMAIL"
  before insert or update on "EMPLOYEES"
  for each row
begin
  IF (:NEW."Email" is not null and  :NEW."Email" not like '%@%') THEN
    RAISE_APPLICATION_ERROR(-20100, 'WRONG EMAIL. EMAIL MUST CONTAIN @ SYMBOL');
  END IF;
end;

/

create or replace NONEDITIONABLE trigger "BI_EMPLOYEES_CHECK_SALARY"
  before insert or update on "EMPLOYEES"
  for each row
begin
  IF (:NEW."Salary" is not null and  ( :NEW."Salary"<800 or :NEW."Salary">5000)) THEN
    RAISE_APPLICATION_ERROR(-20100, 'SALARY MUST BETWEEN 800 AND 5000');
  END IF;
end;

/
create or replace NONEDITIONABLE trigger "BI_CUSTOMERS_CHECK_EMAIL"
  before insert or update on "CUSTOMERS"
  for each row
begin
  IF (:NEW."Email" is not null and  :NEW."Email" not like '%@%') THEN
    RAISE_APPLICATION_ERROR(-20100, 'WRONG EMAIL. EMAIL MUST CONTAIN @ SYMBOL');
  END IF;
end;

/
CREATE OR REPLACE NONEDITIONABLE TRIGGER "BI_PROJECTS_CHECK_DATES"
    BEFORE INSERT or update ON "PROJECTS"
    FOR each row
begin
    if(:NEW."FromDate">:NEW."EndDate") THEN
        RAISE_APPLICATION_ERROR(-20100,'WRONG START / END DATE OF THE PROJECT');
    END IF;

end;

/
create or replace noneditionable trigger "BI_SUBPROJECTS_CHECK_DATE"
    BEFORE INSERT OR UPDATE ON "SUBPROJECTS"
    FOR EACH ROW
BEGIN
    IF(:NEW."StartDate">:NEW."EndDate") THEN
        RAISE_APPLICATION_ERROR(-20100,'WRONG START DATE / END DATE OF THE SUBPROJECT');    
    END IF;
END;

/
CREATE OR REPLACE NONEDITIONABLE TRIGGER "BI_TASKS_CHECK_SUBPROJECT_EMPLOYEE"
    BEFORE INSERT OR UPDATE ON "TASKS"
    FOR EACH ROW
BEGIN
    DECLARE COUNT_PROJECTS INT:=0;
    BEGIN
        SELECT COUNT(*) INTO COUNT_PROJECTS FROM EMPLOYEES_PROJECTS P 
                INNER JOIN PROJECTS PR ON PR."Oid"=P."Project"
                INNER JOIN SUBPROJECTS S ON S."Project"=PR."Oid" and s."Oid"=:NEW."SubProject"
                WHERE P."Employee"=:NEW."Employee" ;
        if(COUNT_PROJECTS=0) THEN
            RAISE_APPLICATION_ERROR(-20100,'SUBPROJECT NOT BELONGS TO EMPLOYEE');
        END IF;
    END;

END;

/
create or replace NONEDITIONABLE trigger "BI_EMPLOYEES_PROJECTS_CHECK_FOR_DOUBLE_EMPLOYEE"
  before insert or update on "EMPLOYEES_PROJECTS"
  for each row
begin
    declare count_employee int:=0;
    begin
    select count(*)
        into count_employee
    from EMPLOYEES_PROJECTS 
    INNER JOIN PROJECTS ON PROJECTS."Oid"=EMPLOYEES_PROJECTS."Project"
                WHERE "Employee"=:NEW."Employee" AND PROJECTS."Active"=1 ;

  IF (count_employee>1) THEN
    RAISE_APPLICATION_ERROR(-20100, 'EMPLOYEE MUST HAVE ONE PROJECT');
  END IF;
  end;
end;
/

create or replace NONEDITIONABLE trigger "BI_LEADS_CHECK_FOR_EMPLOYEE_ALLOW_TO_HAVE_CONTACT"
  before insert or update on "LEADS"
  for each row
begin
    declare count_employee int:=0;
    begin
    select count(*)
        into count_employee
    from PROJECT_CONTACTS 
    WHERE "Employee"=:NEW."Employee" AND "Project"=:NEW."Project";
  IF (count_employee<=0) THEN
    RAISE_APPLICATION_ERROR(-20100, 'EMPLOYEE NOT ASIGN TO HAVE CONTACT WITH PROJECT');
  END IF;
  end;
end;
/
create or replace NONEDITIONABLE trigger "BI_EMPLOYEES_CHECK_FOR_CORRECT_COUNTRY_STATE_TOWN"
    BEFORE INSERT OR UPDATE ON "EMPLOYEES"
    FOR EACH ROW
    BEGIN
        DECLARE M_COUNTRY INT:=0; M_STATE INT:=0;      
        BEGIN
            SELECT "Country" INTO M_COUNTRY FROM "STATES" WHERE "Oid"=:NEW."State";
        
            SELECT "State" INTO M_STATE FROM "TOWNS" WHERE "Oid"=:NEW."Town";
                 
            IF (M_COUNTRY!=:NEW."Country" OR M_STATE!=:NEW."State") THEN
                 RAISE_APPLICATION_ERROR(-20100,'WRONG COUNTRY/STATE/TOWN');
            END IF;
        END;
    END;
    /
create or replace NONEDITIONABLE trigger "BI_CUSTOMERS_CHECK_FOR_CORRECT_COUNTRY_STATE_TOWN"
    BEFORE INSERT OR UPDATE ON "CUSTOMERS"
    FOR EACH ROW
    BEGIN
        DECLARE M_COUNTRY INT:=0; M_STATE INT:=0;      
        BEGIN
            SELECT "Country" INTO M_COUNTRY FROM "STATES" WHERE "Oid"=:NEW."State";
        
            SELECT "State" INTO M_STATE FROM "TOWNS" WHERE "Oid"=:NEW."Town";
                 
            IF (M_COUNTRY!=:NEW."Country" OR M_STATE!=:NEW."State") THEN
                 RAISE_APPLICATION_ERROR(-20100,'WRONG COUNTRY/STATE/TOWN');
            END IF;
        END;
    END;
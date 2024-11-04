
SELECT PR."Description" "Project",  EMP."Name" "Employee",sum(TS."Work_Hours") "Work Hours" 
FROM SUBPROJECTS SUB
INNER JOIN TASKS TS ON TS."SubProject"=SUB."Oid"
INNER JOIN PROJECTS PR ON PR."Oid"=SUB."Project"
INNER JOIN EMPLOYEES EMP ON EMP."Oid"=TS."Employee"
group by PR."Description",EMP."Name"
order by 1,2;

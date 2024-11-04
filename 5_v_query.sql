
SELECT EMP."Name" "Employee", SUB."Description" "SubProject", SUB."StartDate" "StartDate SubProject",SUB."EndDate" "EndDate SubProject"
,SUB."EndDate"-SUB."StartDate" "Duration (Days)"
,PR."Description" "Project", PR."Oid" "Project Oid" FROM SUBPROJECTS SUB
INNER JOIN TASKS TS ON TS."SubProject"=SUB."Oid"
INNER JOIN PROJECTS PR ON PR."Oid"=SUB."Project"
INNER JOIN EMPLOYEES EMP ON EMP."Oid"=TS."Employee"
WHERE PR."Oid"=&PROJECTOID
order by 1,2,3;

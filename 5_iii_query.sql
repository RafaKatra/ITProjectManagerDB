SELECT P."Oid" "Project Oid",P."Description" "Project Description",P."FromDate" "Project FromDate",P."EndDate" "Project EndDate",
P."Budget" "BUDGET",CUS."Name" "Customer",
SUB."Oid" "SubProject Oid",SUB."Description" "SubProject Description",SUB."StartDate" "SubProject StartDate",SUB."EndDate" "SubProject EndDate"
FROM PROJECTS P
INNER JOIN CUSTOMERS CUS ON CUS."Oid"=P."Customer"
INNER JOIN SUBPROJECTS SUB ON SUB."Project"=P."Oid"
ORDER BY P."FromDate",SUB."StartDate";
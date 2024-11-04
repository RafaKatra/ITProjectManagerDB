SELECT P."Oid" "Project Oid",P."Description" "Project Description",P."FromDate" "Project FromDate",P."EndDate" "Project EndDate",
P."Budget" "BUDGET",CUS."Name" "Customer"
FROM PROJECTS P
INNER JOIN CUSTOMERS CUS ON CUS."Oid"=P."Customer"
ORDER BY P."FromDate";
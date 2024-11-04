SELECT EMP."Oid","Name","Street","Area","ZipCode",
C."Description" "Country",
S."Description" "State",
T."Description" "Town",
"Phone","Email","Salary",
CA."Description" Category 
FROM EMPLOYEES EMP
LEFT OUTER JOIN COUNTRIES C ON C."Oid"=EMP."Country"
left outer join STATES S ON S."Oid"=EMP."State"
left outer join TOWNS T on T."Oid"=EMP."Town"
inner join EMPLOYEE_CATEGORIES CA ON CA."Oid"=EMP."Employee_Category";
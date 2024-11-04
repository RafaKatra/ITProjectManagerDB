SELECT ST."Description" "Status",Count(P."Oid") "Number of Projects"
from PROJECTS P 
INNER JOIN PROJECTS_STATUS ST ON ST."Oid"=P."Project_Status"
GROUP BY ST."Description"
order by 1;
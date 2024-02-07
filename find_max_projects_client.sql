-- SELECT WORKER_ID , COUNT(PROJECT_ID) FROM PROJECT_WORKER GROUP BY WORKER_ID
-- HAVING COUNT(PROJECT_ID) = (SELECT MAX(project_count) FROM 
--                             (SELECT COUNT(PROJECT_ID) as project_count FROM PROJECT_WORKER GROUP BY WORKER_ID) AS subquery);

                            
SELECT w.NAME, COUNT(p.PROJECT_ID) 
FROM PROJECT_WORKER p
JOIN WORKER w ON p.WORKER_ID = w.ID
GROUP BY w.NAME
HAVING COUNT(p.PROJECT_ID) = (
    SELECT MAX(project_count)
    FROM (
        SELECT COUNT(PROJECT_ID) as project_count 
        FROM PROJECT_WORKER 
        GROUP BY WORKER_ID
    ) AS subquery
);

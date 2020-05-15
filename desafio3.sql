SELECT 
    JOB_TITLE,
    AVG(MAX_SALARY - MIN_SALARY) AS `Diferença média entre salários mínimos e máximos`
FROM
    hr.jobs
GROUP BY JOB_TITLE;

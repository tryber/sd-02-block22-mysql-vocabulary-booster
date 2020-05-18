SELECT
    job_title,
    (AVG(MAX_SALARY)-AVG(MIN_SALARY)) AS `Diferença média entre salários mínimos e máximos`
FROM hr.jobs
GROUP BY job_title
ORDER BY `Diferença média entre salários mínimos e máximos`;

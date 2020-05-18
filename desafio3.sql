SELECT 
  job_title,
  AVG(max_salary - min_salary) AS `Diferença média entre salários mínimos e máximos`
FROM
  hr.jobs
GROUP BY 1
ORDER BY 2;

SELECT
  job_title,
  ROUND(max_salary - min_salary, 4) AS 'Diferença média entre salários mínimos e máximos'
FROM hr.jobs ORDER BY ROUND(max_salary - min_salary, 4);

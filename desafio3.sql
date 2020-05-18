SELECT
  job_title,
  AVG(max_salary - min_salary) as 'Diferença média entre salários mínimos e máximos'
FROM
  hr.jobs
GROUP BY
  job_title
ORDER BY
  2;

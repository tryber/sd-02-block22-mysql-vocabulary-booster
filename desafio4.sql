SELECT
  job_id AS 'Código do Cargo',
  AVG(salary) AS Média,
  CASE
    WHEN AVG(salary) >= 2000 AND AVG(salary) < 5801 THEN 'Júnior'
    WHEN AVG(salary) < 7501 THEN 'Pleno'
    WHEN AVG(salary) < 10501 THEN 'Sênior'
    ELSE 'CEO'
  END AS Senioridade
FROM hr.employees GROUP BY job_id ORDER BY Média;

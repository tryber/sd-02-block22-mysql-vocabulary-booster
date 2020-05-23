SELECT
  SJH.employee_id,
  UCASE(CONCAT(E.first_name, ' ', E.last_name)) AS `Nome completo`,
  SJH.start_date,
  E.salary
FROM (
  SELECT * FROM hr.job_history
  WHERE MONTH(start_date) IN (1, 2, 3)
) AS SJH
INNER JOIN hr.employees AS E
ON SJH.employee_id = E.employee_id
ORDER BY `Nome completo`;

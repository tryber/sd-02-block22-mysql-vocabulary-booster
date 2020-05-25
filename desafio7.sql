SELECT 
  jh.employee_id,
  UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS `Nome completo`,
  jh.start_date,
  e.salary
FROM hr.job_history as jh
INNER JOIN hr.employees AS e ON jh.employee_id = e.employee_id
WHERE MONTH(jh.start_date) BETWEEN 01 AND 03
ORDER BY `Nome completo`;

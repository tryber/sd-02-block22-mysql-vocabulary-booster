SELECT
  employee_id,
  (
    SELECT UCASE(CONCAT(first_name, ' ', last_name))
    FROM hr.employees AS E
    WHERE E.employee_id = H.employee_id
  ) AS 'Nome completo',
  start_date,
  (
    SELECT salary
    FROM hr.employees AS E
    WHERE E.employee_id = H.employee_id
  ) AS salary
FROM hr.job_history AS H
WHERE MONTH(start_date) IN(1,2,3)
ORDER BY 2;

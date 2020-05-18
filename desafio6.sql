SELECT
  H.start_date,
  H.employee_id,
  (
    SELECT CONCAT(first_name, ' ', last_name)
    FROM hr.employees AS e
    WHERE H.employee_id = e.employee_id
  ) AS 'Nome completo',
  H.job_id,
  J.job_title AS Cargo,
  H.department_id,
  (
    SELECT department_name
    FROM hr.departments
    WHERE H.department_id = hr.departments.department_id
  ) AS Departamento
FROM hr.job_history AS H
INNER JOIN hr.jobs AS J ON H.job_id = J.job_id
ORDER BY 3 DESC;

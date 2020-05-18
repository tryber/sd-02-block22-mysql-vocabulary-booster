SELECT jh.start_date, jh.employee_id, CONCAT(emp.first_name, ' ', emp.last_name) AS 'Nome completo',
	jh.job_id, jobs.job_title AS Cargo, jh.department_id, dep.department_name AS Departamento
FROM hr.job_history as jh, hr.employees AS emp, hr.jobs AS jobs, hr.departments AS dep
WHERE jh.employee_id = emp.employee_id AND jh.department_id = dep.department_id AND jh.job_id = jobs.job_id
ORDER BY emp.first_name DESC;
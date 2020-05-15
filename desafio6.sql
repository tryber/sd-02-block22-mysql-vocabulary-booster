SELECT 
	jh.start_date, 
    jh.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) as `Nome completo`,
    jh.job_id,
    j.job_title as `Cargo`,
    jh.department_id,
    d.department_name
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON e.employee_id = jh.employee_id
INNER JOIN hr.jobs AS j
ON jh.job_id = j.job_id
INNER JOIN hr.departments AS d
ON jh.department_id = d.department_id
ORDER BY `Nome completo` DESC;
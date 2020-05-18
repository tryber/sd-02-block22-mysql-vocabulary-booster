SELECT jh.employee_id, UPPER(CONCAT(emp.first_name, ' ', emp.last_name)) AS 'Nome Completo',
	jh.start_date, emp.salary
FROM hr.job_history AS jh, hr.employees AS emp
WHERE MONTH(jh.start_date) IN (1, 2, 3) AND jh.EMPLOYEE_ID = emp.employee_id
ORDER BY emp.first_name ASC;
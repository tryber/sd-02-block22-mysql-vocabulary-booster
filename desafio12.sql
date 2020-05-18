SELECT emp_a.FIRST_NAME, emp_a.SALARY, emp_a.PHONE_NUMBER,
	emp_b.first_name, emp_b.SALARY, emp_b.PHONE_NUMBER
FROM hr.employees AS emp_a, hr.employees AS emp_b
WHERE emp_a.JOB_ID = emp_b.JOB_ID
ORDER BY emp_a.FIRST_NAME ASC;

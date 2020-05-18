SELECT
  employees.EMPLOYEE_ID,
  UCASE(
    CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)
  ) AS 'Nome Completo',
  jobHistory.START_DATE,
  employees.SALARY
FROM
  hr.employees AS employees
  INNER JOIN hr.job_history AS jobHistory ON jobHistory.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE
  MONTH(jobHistory.START_DATE) IN (1, 2, 3)
ORDER BY
  `Nome Completo` ASC;

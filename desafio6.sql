SELECT
  jobHistory.START_DATE,
  emp.EMPLOYEE_ID,
  CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome Completo',
  jobHistory.JOB_ID,
  jobs.JOB_TITLE AS 'Cargo',
  departaments.DEPARTMENT_ID,
  departaments.DEPARTMENT_NAME
FROM
  hr.employees AS emp
  INNER JOIN hr.job_history AS jobHistory ON emp.EMPLOYEE_ID = jobHistory.EMPLOYEE_ID
  INNER JOIN hr.jobs AS jobs ON jobs.JOB_ID = jobHistory.JOB_ID
  INNER JOIN hr.departments AS departaments ON jobHistory.DEPARTMENT_ID = departaments.DEPARTMENT_ID
ORDER BY
  `Nome Completo` DESC;

SELECT
  E1.first_name,
  E1.salary,
  E1.phone_number,
  E2.first_name,
  E2.salary,
  E2.phone_number
FROM hr.employees AS E1
INNER JOIN hr.employees AS E2
ON E1.job_id = E2.job_id
ORDER BY 1;

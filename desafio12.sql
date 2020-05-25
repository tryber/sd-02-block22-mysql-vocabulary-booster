SELECT 
  e.first_name,
  e.salary,
  e.phone_number,
  ecopy.first_name,
  ecopy.salary,
  ecopy.phone_number
FROM hr.employees AS e, hr.employees AS ecopy 
WHERE e.job_id = ecopy.job_id
ORDER BY 1;

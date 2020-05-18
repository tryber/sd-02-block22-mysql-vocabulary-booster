SELECT
  employees1.FIRST_NAME,
  employees1.SALARY,
  employees1.PHONE_NUMBER,
  employees2.FIRST_NAME,
  employees2.SALARY,
  employees2.PHONE_NUMBER
FROM
  hr.employees employees1,
  hr.employees employees2
WHERE
  employees1.JOB_ID = employees2.JOB_ID
ORDER BY
  employees1.First_Name;

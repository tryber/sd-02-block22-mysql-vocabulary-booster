SELECT 
    A.FIRST_NAME,
    A.SALARY,
    A.PHONE_NUMBER,
    B.FIRST_NAME,
    B.SALARY,
    B.PHONE_NUMBER
FROM
    hr.employees A,
    hr.employees B
WHERE
    A.JOB_ID = B.JOB_ID
ORDER BY A.FIRST_NAME;

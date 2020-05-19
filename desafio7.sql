SELECT 
    H.EMPLOYEE_ID,
    (SELECT 
            UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME))
        FROM
            hr.employees E
        WHERE
            H.EMPLOYEE_ID = E.EMPLOYEE_ID) AS `Nome completo`,
    H.START_DATE,
    (SELECT 
            E.SALARY
        FROM
            hr.employees E
        WHERE
            H.EMPLOYEE_ID = E.EMPLOYEE_ID) AS salary
FROM
    hr.job_history H
WHERE
    MONTH(H.START_DATE) IN (1 , 2, 3)
ORDER BY `Nome completo`;

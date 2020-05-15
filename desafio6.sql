SELECT 
    H.START_DATE,
    H.EMPLOYEE_ID,
    (SELECT 
            CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)
        FROM
            hr.employees E
        WHERE
            H.EMPLOYEE_ID = E.EMPLOYEE_ID) AS `Nome completo`,
    H.JOB_ID,
    (SELECT 
            J.JOB_TITLE
        FROM
            hr.jobs J
        WHERE
            J.JOB_ID = H.JOB_ID) AS Cargo,
    (SELECT 
            D.DEPARTMENT_ID
        FROM
            hr.departments D
        WHERE
            D.DEPARTMENT_ID = H.DEPARTMENT_ID) AS department_id,
    (SELECT 
            D.DEPARTMENT_NAME
        FROM
            hr.departments D
        WHERE
            D.DEPARTMENT_ID = H.DEPARTMENT_ID) AS Departamento
FROM
    hr.job_history H
WHERE
    H.EMPLOYEE_ID <> 0
ORDER BY `Nome completo` DESC;
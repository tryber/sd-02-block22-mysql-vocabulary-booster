USE hr;
DELIMITER $$

DROP PROCEDURE IF EXISTS ExibirHistoricoCompletoPorFuncionario $$

CREATE PROCEDURE ExibirHistoricoCompletoPorFuncionario(IN employee_id INT)
BEGIN
    SELECT 
        JH.EMPLOYEE_ID, 
        (SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) 
        FROM hr.employees E 
        WHERE JH.EMPLOYEE_ID = E.EMPLOYEE_ID) AS `Nome Completo`,
        (SELECT J.JOB_TITLE 
        FROM hr.jobs J 
        WHERE JH.JOB_ID = J.JOB_ID) as Cargo,
        (SELECT D.DEPARTMENT_NAME 
        FROM hr.departments D 
        WHERE JH.DEPARTMENT_ID = D.DEPARTMENT_ID) as Departamento
    FROM 
        hr.job_history JH
	WHERE JH.EMPLOYEE_ID = employee_id;
END $$

DELIMITER ;

CALL ExibirHistoricoCompletoPorFuncionario(101);

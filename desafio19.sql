USE hr;
DELIMITER $$

CREATE PROCEDURE ExibirHistoricoCompletoPorFuncionario (IN employee_id INT)
BEGIN
    SELECT jh.employee_id,
        (SELECT CONCAT(e.first_name,' ',e.last_name) FROM hr.employees AS e WHERE e.EMPLOYEE_ID = employee_id)
            AS 'Nome Completo',
        (SELECT jobs.JOB_TITLE FROM hr.jobs as jobs WHERE jobs.JOB_ID = jh.JOB_ID)
            AS Cargo,
        (SELECT dep.DEPARTMENT_NAME FROM  hr.departments as dep WHERE dep.DEPARTMENT_ID = jh.DEPARTMENT_ID)
            AS Departamento
    FROM hr.job_history as jh
    WHERE jh.employee_id = employee_id;
END $$

DELIMITER ;

CALL ExibirHistoricoCompletoPorFuncionario(101);

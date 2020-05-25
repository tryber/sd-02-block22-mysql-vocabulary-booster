USE hr;

DELIMITER $$
CREATE PROCEDURE BuscarMediaPorCategoriaDeTrabalho(IN job_id VARCHAR(8))
BEGIN
    SELECT ROUND(AVG(SALARY), 2) AS media
    FROM hr.employees AS e
    WHERE e.JOB_ID = job_id;
END $$

DELIMITER ;

CALL BuscarMediaPorCategoriaDeTrabalho('IT_PROG');

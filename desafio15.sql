USE hr;
DELIMITER $$

CREATE PROCEDURE BuscarMediaPorCategoriaDeTrabalho(IN jobID VARCHAR(10))
BEGIN
  SELECT ROUND(AVG(salary), 2) AS media
  FROM hr.employees
  WHERE job_id = jobID;
END $$

DELIMITER ;

CALL BuscarMediaPorCategoriaDeTrabalho('IT_PROG');
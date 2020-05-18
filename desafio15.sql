USE hr;
DELIMITER $$

CREATE PROCEDURE BuscarMediaPorCategoriaDeTrabalho(in id VARCHAR(10))
BEGIN
  SELECT ROUND(AVG(SALARY),2) AS 'media'
  FROM employees
  WHERE JOB_ID = id;
END $$

DELIMITER ;

CALL BuscarMediaPorCategoriaDeTrabalho('IT_PROG');

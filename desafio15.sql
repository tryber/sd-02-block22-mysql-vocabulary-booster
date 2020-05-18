USE hr;
DELIMITER $$

DROP PROCEDURE IF EXISTS BuscarMediaPorCategoriaDeTrabalho $$
CREATE PROCEDURE BuscarMediaPorCategoriaDeTrabalho(IN id VARCHAR(10))

BEGIN
  SELECT ROUND(AVG(SALARY), 2) AS media
  FROM hr.employees
  WHERE JOB_ID = id
  GROUP BY JOB_ID;
END $$

DELIMITER ;

CALL BuscarMediaPorCategoriaDeTrabalho('IT_PROG');

use hr;
DROP PROCEDURE IF EXISTS BuscarMediaPorCategoriaDeTrabalho;
DELIMITER $$
CREATE PROCEDURE BuscarMediaPorCategoriaDeTrabalho(in job_id2 varchar(50))
BEGIN
  select round(sum(salary) / count(*), 2) as média from employees where job_id = job_id2;
END $$ DELIMITER ;
CALL BuscarMediaPorCategoriaDeTrabalho('IT_PROG');

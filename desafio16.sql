use hr;
DROP PROCEDURE IF EXISTS BuscarQuantidadeDeEmpregosPorFuncionario;
DELIMITER $$
CREATE PROCEDURE BuscarQuantidadeDeEmpregosPorFuncionario(in id INT)
BEGIN
  select count(*) from job_history where employee_ID = id;
END $$ DELIMITER ;
CALL BuscarQuantidadeDeEmpregosPorFuncionario(101);

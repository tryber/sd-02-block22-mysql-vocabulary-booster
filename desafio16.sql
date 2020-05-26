use hr;
DROP FUNCTION IF EXISTS BuscarQuantidadeDeEmpregosPorFuncionario;
DELIMITER $$
CREATE FUNCTION BuscarQuantidadeDeEmpregosPorFuncionario(id INT)
returns INT
deterministic
  select count(*) from job_history where employee_ID = id;
$$ DELIMITER ;
CALL BuscarQuantidadeDeEmpregosPorFuncionario(101);

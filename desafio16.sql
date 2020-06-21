use hr;
DROP FUNCTION IF EXISTS BuscarQuantidadeDeEmpregosPorFuncionario;
DELIMITER $$
CREATE FUNCTION BuscarQuantidadeDeEmpregosPorFuncionario(id INT)
returns INT
deterministic
return (select count(*) from job_history where employee_ID = id);
$$ DELIMITER ;
select BuscarQuantidadeDeEmpregosPorFuncionario(101) as BuscarQuantidadeDeEmpregosPorFuncionario;

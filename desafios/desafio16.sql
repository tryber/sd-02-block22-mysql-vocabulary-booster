use hr;
DELIMITER $$
create function BuscarQuantidadeDeEmpregosPorFuncionario(employeeID int)
returns int reads sql data
begin
declare final_value INT;
SELECT COUNT(job_id) from job_history where employee_id = employeeid into final_value;
return final_value;
end $$

DELIMITER ;

select BuscarQuantidadeDeEmpregosPorFuncionario(101);

use hr;

delimiter $$

drop function if exists BuscarQuantidadeDeEmpregosPorFuncionario $$

create function BuscarQuantidadeDeEmpregosPorFuncionario(id_funcionario INT)
returns INT reads sql data
begin
	declare qty_jobs int;
    select count(JOB_ID) 
    from hr.job_history
    where employee_id = id_funcionario
    into qty_jobs ;
    return qty_jobs;
end $$

delimiter ;

select BuscarQuantidadeDeEmpregosPorFuncionario(101);
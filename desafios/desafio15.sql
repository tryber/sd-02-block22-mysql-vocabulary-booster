use hr;
delimiter $$
create procedure BuscarMediaPorCategoriaDeTrabalho(in jobId varchar(20))

begin
  select round(avg(salary), 2) as media from hr.employees group by job_id
  having job_id = jobId;
end $$

delimiter ;

CALL BuscarMediaPorCategoriaDeTrabalho('IT_PROG');

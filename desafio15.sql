use hr;

delimiter $$

drop procedure if exists BuscarMediaPorCategoriaDeTrabalho $$

create procedure BuscarMediaPorCategoriaDeTrabalho(IN categoria VARCHAR(300), OUT media NUMERIC(6, 2))
begin
select avg(salary) into media
from hr.employees
where job_id = categoria;
end $$

delimiter ;

select 'IT_PROG' into @categoria;
call BuscarMediaPorCategoriaDeTrabalho(@categoria, @media);
select @media;

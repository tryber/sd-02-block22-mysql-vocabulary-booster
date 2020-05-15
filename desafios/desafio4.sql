select job_id as 'Código do Cargo', avg(salary) as 'Média',
case
when avg(salary) between 2000 and 5800 then 'Júnior'
when avg(salary) between 5801 and 7500 then 'Pleno'
when avg(salary) between 7501 and 10500 then 'Senior'
when avg(salary) > 10500 then 'CEO'
end as 'Senioridade'
from hr.employees
group by job_id
order by avg(salary);

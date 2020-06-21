select
job_id as 'Código de Cargo',
avg(salary) as media,
case
when avg(salary) >= 2000 and avg(salary) <= 5800 then 'Junior'
when avg(salary) >= 5801 and avg(salary) <= 7500 then 'Pleno'
when avg(salary) >= 7501 and avg(salary) <= 10500  then 'Sênior'
when avg(salary) > 10500 then 'CEO'
end as Senioridade
from hr.employees
group by job_id
order by media;

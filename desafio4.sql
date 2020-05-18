select 
job_id as Codigo_do_Cargo, 
avg(salary) as Media,
case 
when avg(salary) >= 2000 and avg(salary) <= 5800 then 'Junior'
when avg(salary) >= 5801 and avg(salary) <= 7500 then 'Pleno'
when avg(salary) >= 7501 and avg(salary) <= 10500 then 'Senior'
else 'CEO'
end as Senioridade
from hr.employees
group by Codigo_do_Cargo
order by Media;
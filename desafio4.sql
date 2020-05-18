select
job_id as 'Código de Cargo',
sum(salary) / count(salary) as media
from hr.employees
group by job_id
order by media;

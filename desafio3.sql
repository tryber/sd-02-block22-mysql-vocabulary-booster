select job_title,
avg(max_salary - min_salary) as 'Diferença média entre salários mínimos e máximos'
from hr.jobs
group by job_title
order by avg(max_salary - min_salary);

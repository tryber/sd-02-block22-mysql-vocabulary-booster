select job_title,
(max_salary - min_salary) as 'Diferença média entre salários mínimos e máximos'
from hr.jobs
order by (max_salary - min_salary);

select
job_title, cast(AVG(MAX_SALARY) - AVG(MIN_SALARY) as DECIMAL(10,4))
as "Diferença média entre salários mínimos e máximos"
from hr.jobs
group by job_title
order by 2;

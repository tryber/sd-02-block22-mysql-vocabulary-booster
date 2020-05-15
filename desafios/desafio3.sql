select job_title, round(max_salary - min_salary, 4)
as "Diferença média entre salários mínimos e máximos"
from hr.jobs;

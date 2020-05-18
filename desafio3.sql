select job_title,
avg (MAX_SALARY - MIN_SALARY) as diferenca_media_entre_salarios_minimos_e_maximos
from hr.jobs
group by job_title
order by diferenca_media_entre_salarios_minimos_e_maximos;

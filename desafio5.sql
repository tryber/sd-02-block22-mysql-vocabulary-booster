select job_title,
avg (MAX_SALARY - MIN_SALARY) as Variacao_Salarial,
round((MIN_SALARY / 12), 2) as Media_minima_mensal,
round((MAX_SALARY / 12), 2) as Media_maxima_mensal
from hr.jobs
group by job_title
order by Variacao_Salarial;

select job_title as Cargo,
(MAX_SALARY - MIN_SALARY) as variacao_salarial,
round((MIN_SALARY / 12), 2) as media_minima_mensal,
round((MAX_SALARY / 12), 2) as media_maxima_mensal
from hr.jobs
order by variacao_salarial;

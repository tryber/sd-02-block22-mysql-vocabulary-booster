select job_title,
case
when max_salary >= 5000 and max_salary <= 10000 then 'Baixo'
when max_salary >= 10001 and max_salary <= 20000 then 'Medio'
when max_salary >= 20001 and max_salary <= 30000 then 'Alto'
else 'Altissimo'
end as Nivel
from hr.jobs;

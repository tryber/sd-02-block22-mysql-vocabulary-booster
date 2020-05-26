select
employee_id,
concat(day(start_date), '/', month(start_date), '/', year(start_date)) as 'Data Início',
concat(day(end_date), '/', month(end_date), '/', year(end_date)) as 'Data Rescisão',
round(datediff(end_date, start_date) / 365, 2) as 'Anos trabalhados'
from hr.job_history
order by employee_id
limit 11;

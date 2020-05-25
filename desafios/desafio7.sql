select
ey.employee_id,
UCASE(concat(ey.first_name, ' ', ey.last_name)) as 'Nome Completo',
jh.start_date,
ey.salary
from hr.employees as ey
inner join hr.job_history as jh on jh.employee_id = ey.employee_id
where month(jh.start_Date) between 1 and 3
order by 2;

select
e.employee_id,
concat(upper(first_name), ' ', upper(last_name)) as 'Nome completo',
start_date,
salary
from hr.employees as e
join hr.job_history as j on e.job_id = j.job_id
having month(start_date) in (1, 2, 3)
order by e.employee_id
limit 6;

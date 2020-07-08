select
e.employee_id,
concat(upper(first_name), ' ', upper(last_name)) as 'Nome completo',
start_date,
salary
from hr.job_history as j
join hr.employees as e on e.employee_id = j.employee_id
where month(start_date) in (1, 2, 3)
order by `Nome completo`
limit 6;

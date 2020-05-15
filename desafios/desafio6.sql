select
jh.start_date,
jh.employee_id,
concat(ey.first_name, ' ', ey.last_name) as `Nome Completo`,
jh.job_id,
jb.job_title as 'Cargo',
dpt.department_id,
dpt.department_name as 'Departamento'
from
hr.job_history as jh
inner join hr.jobs as jb on jh.job_id = jb.job_id
inner join hr.employees as ey on jh.employee_id = ey.employee_id
inner join hr.departments as dpt on ey.department_id = dpt.department_id
order by `Nome Completo` desc;

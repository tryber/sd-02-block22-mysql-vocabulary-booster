select
h.start_date as start_date,
h.employee_id as employee_id,
concat(first_name, ' ', last_name) as 'Nome completo',
h.job_id,
job_title as Cargo,
h.department_id as department_id,
department_name as Departamento
from hr.job_history as h
join hr.employees as e on e.employee_id = h.employee_id
join hr.departments as d on h.department_id = d.department_id
join hr.jobs as j on h.job_id = j.job_id
order by concat(first_name, ' ', last_name) desc
limit 10;

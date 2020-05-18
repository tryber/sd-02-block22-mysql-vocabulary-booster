select
h.start_date as start_date,
e.employee_id as employee_id,
concat(first_name, ' ', last_name) as 'Nome completo',
j.job_id as job_id,
job_title as Cargo,
department_name as Departamento,
d.department_id as department_id
from hr.job_history as h
join hr.employees as e on e.employee_id = h.employee_id
join hr.departments as d on e.department_id = d.department_id
join hr.jobs as j on e.job_id = j.job_id
order by concat(first_name, ' ', last_name) desc;

select
emp.employee_id,
ucase(concat(emp.first_name, ' ', emp.last_name)) as Nome_Completo,
jh.start_date,
emp.salary
from hr.job_history as jh
inner join hr.employees as emp on emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
where month(jh.start_date) <= 3
order by Nome_Completo;
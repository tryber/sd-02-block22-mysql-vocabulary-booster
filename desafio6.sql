select
jh.START_DATE,
emp.EMPLOYEE_ID,
concat(emp.first_name, ' ', emp.last_name) as Nome_Completo,
jh.JOB_ID,
jb.JOB_TITLE as Cargo,
dp.DEPARTMENT_ID,
dp.DEPARTMENT_NAME as Departamento
from hr.employees as emp
inner join hr.job_history as jh on jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
inner join hr.jobs as jb on jb.JOB_ID = jh.JOB_ID
inner join hr.departments as dp on jh.DEPARTMENT_ID = dp.DEPARTMENT_ID
order by Nome_Completo desc;
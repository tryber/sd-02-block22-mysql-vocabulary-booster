select
emp1.first_name,
emp1.salary,
emp1.phone_number,
emp2.first_name,
emp2.salary,
emp2.phone_number
from hr.employees as emp1
inner join hr.employees as emp2 on emp1.job_id = emp2.job_id
order by 1;

select
e1.first_name,
e1.salary,
e1.phone_number,
e2.first_name
from hr.employees e1
join hr.employees as e2 on e1.employee_id = e2.employee_id
group by e1.first_name
order by e1.first_name
limit 1839;

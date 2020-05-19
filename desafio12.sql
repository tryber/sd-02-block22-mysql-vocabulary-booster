select
e1.first_name,
e1.salary,
e1.phone_number,
e2.first_name,
e2.salary,
e2.phone_number
from hr.employees as e1, hr.employees as e2
order by e1.first_name
limit 1839;

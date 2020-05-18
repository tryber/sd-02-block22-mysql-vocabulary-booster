select
e.employeeId,
count(o.employeeID) as 'Total de pedidos'
from w3schools.employees e
join w3schools.orders o on e.employeeID = o.employeeID
group by employeeId
order by count(o.employeeID)
limit 9;
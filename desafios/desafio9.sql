select
employeeid,
count(employeeid) as 'Total de Pedidos'
from w3schools.orders
group by employeeid
order by 2;

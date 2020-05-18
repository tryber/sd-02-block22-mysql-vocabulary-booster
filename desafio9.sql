select EmployeeID, count(*) as Total_de_pedidos from w3schools.orders
group by EmployeeID
order by Total_de_pedidos;
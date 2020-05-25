SELECT EmployeeID,
COUNT(EmployeeID) AS 'Total de Pedidos'
FROM w3schools.orders
GROUP BY EmployeeID
ORDER BY COUNT(EmployeeID);

SELECT ord.employeeID, COUNT(*) AS 'Total de Pedidos'
FROM w3schools.orders AS ord
GROUP BY ord.employeeID
ORDER BY COUNT(*) ASC;

SELECT 
    EmployeeID, COUNT(EmployeeID) AS `Total de pedidos`
FROM
    orders
GROUP BY EmployeeID
ORDER BY `Total de pedidos`;

SELECT EmployeeID, COUNT(EmployeeID)
FROM w3schools.orders
GROUP BY EmployeeID
ORDER BY 2;

SELECT O.OrderID, O.CustomerID, C.ContactName, O.ShipperID
FROM w3schools.orders AS O
INNER JOIN w3schools.customers AS C
ON O.CustomerID = C.CustomerID
WHERE O.ShipperID BETWEEN 1 AND 2
ORDER BY O.CustomerID;

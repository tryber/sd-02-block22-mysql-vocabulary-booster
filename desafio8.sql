SELECT 
  o.OrderID,
  o.CustomerID,
  c.ContactName,
  o.ShipperID
FROM w3schools.orders AS o
INNER JOIN w3schools.customers AS c ON o.CustomerID = c.CustomerID
WHERE o.ShipperID IN (1, 2)
ORDER BY CustomerID;

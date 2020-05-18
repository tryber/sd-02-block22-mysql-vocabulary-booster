SELECT
  O.OrderID,
  O.CustomerID,
  C.ContactName,
  O.ShipperID
FROM w3schools.orders AS O
INNER JOIN w3schools.customers AS C
ON C.CustomerID = O.CustomerID
WHERE ShipperID IN(1,2)
ORDER BY CustomerID;

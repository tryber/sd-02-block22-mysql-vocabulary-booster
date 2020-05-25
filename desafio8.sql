SELECT ord.OrderID, ord.CustomerID, cust.ContactName, ord.ShipperID
FROM w3schools.orders AS ord
INNER JOIN w3schools.customers AS cust
ON ord.ShipperID IN (1, 2) AND ord.customerID = cust.customerID
ORDER BY ord.customerID ASC;

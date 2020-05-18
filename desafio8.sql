SELECT
  orders.OrderID,
  customers.CustomerID,
  customers.ContactName,
  orders.ShipperID
FROM
  w3schools.orders AS orders
  INNER JOIN w3schools.customers AS customers ON orders.CustomerID = customers.CustomerID
WHERE
  orders.ShipperID IN (1, 2)
ORDER BY
  customers.CustomerID;

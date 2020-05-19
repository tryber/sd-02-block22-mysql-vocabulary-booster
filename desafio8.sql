SELECT 
    O.OrderID, O.CustomerID, C.ContactName, O.ShipperID
FROM
    w3schools.orders O
        INNER JOIN
    w3schools.customers C ON O.CustomerID = C.CustomerID
        AND O.ShipperID IN(1, 2)
ORDER BY O.CustomerID;

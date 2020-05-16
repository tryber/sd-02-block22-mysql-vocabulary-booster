SELECT 
    P.ProductName, P.Price
FROM
    w3schools.products P
WHERE
    (SELECT
            SUM(O.Quantity)
        FROM
            w3schools.order_details O
        WHERE
            O.ProductID = P.ProductID) > 80
ORDER BY P.ProductName;

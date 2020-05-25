SELECT prod.ProductName AS ProductName, prod.Price AS Price
FROM w3schools.products as prod
GROUP BY ProductID
HAVING (SELECT MAX(Quantity) FROM w3schools.order_details 
    WHERE ProductID = prod.ProductID) > 80
ORDER BY ProductName;

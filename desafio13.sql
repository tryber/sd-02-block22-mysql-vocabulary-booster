SELECT P.productname, P.Price 
FROM w3schools.products as P
INNER JOIN w3schools.order_details AS OD
ON P.productID = OD.productID
WHERE OD.Quantity > 80
ORDER BY P.productname;

SELECT 
  p.productname,
  p.Price 
FROM w3schools.products as p
INNER JOIN w3schools.order_details as o ON p.productID = o.productID
WHERE o.Quantity > 80
ORDER BY 1;

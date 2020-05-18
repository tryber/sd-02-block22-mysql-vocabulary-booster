SELECT
  products.ProductName,
  products.Price
FROM
  w3schools.order_details AS orderDetails,
  w3schools.products AS products
WHERE
  products.ProductID = orderDetails.ProductID
  AND orderDetails.Quantity > 80
ORDER BY
  products.ProductName;

SELECT
  (
    SELECT ProductName
    FROM w3schools.products AS P
    WHERE P.ProductID = D.ProductID
  ) AS productname,
  (
    SELECT Price
    FROM w3schools.products AS P
    WHERE P.ProductID = D.ProductID
  ) AS Price
FROM w3schools.order_details as D
WHERE Quantity > 80
GROUP BY D.ProductID
ORDER BY productname;

SELECT 
ProductID,
MIN(Quantity) AS `Mínimo`,
MAX(Quantity) AS `Máximo`,
ROUND(AVG(Quantity),2) AS `Média`
FROM w3schools.order_details
GROUP BY ProductID
HAVING AVG(Quantity) > 20
ORDER BY `Média`;

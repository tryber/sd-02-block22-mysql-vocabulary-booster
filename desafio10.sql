SELECT od.ProductID, MIN(od.Quantity) AS Mínimo, MAX(od.Quantity) AS Máximo, 
    (SELECT ROUND(AVG(od.Quantity), 2) 
    FROM w3schools.order_details
    WHERE ProductID = od.ProductId
    AND ROUND(AVG(od.Quantity), 2) > 20.00
    GROUP BY ProductID) AS Média
FROM w3schools.order_details AS od
GROUP BY od.ProductID
HAVING Média IS NOT NULL
ORDER BY Média ASC

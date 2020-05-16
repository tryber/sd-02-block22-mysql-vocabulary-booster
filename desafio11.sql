SELECT 
    A.CustomerID,
    A.CustomerName AS Nome,
    A.Country AS País,
    COUNT(B.Country) - 1 AS `Número de Compatriotas`
FROM
    w3schools.customers A,
    w3schools.customers B
WHERE
    A.Country = B.Country
GROUP BY A.CustomerID
ORDER BY A.CustomerName;

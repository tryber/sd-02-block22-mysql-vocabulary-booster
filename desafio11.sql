SELECT 
    A.CustomerID,
    A.CustomerName AS Nome,
    A.Country AS País,
    COUNT(B.Country) AS `Número de Compatriotas`
FROM
    w3schools.customers A,
    w3schools.customers B
WHERE
    A.Country = B.Country
        AND A.CustomerID <> B.CustomerID
GROUP BY A.CustomerID
HAVING `Número de Compatriotas` > 0
ORDER BY A.CustomerName;

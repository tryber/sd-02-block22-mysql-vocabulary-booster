SELECT
  CustomerID,
  ContactName AS Nome,
  Country AS País,
  (
    SELECT (COUNT(*) - 1) FROM w3schools.customers AS SC
    WHERE C.Country = SC.Country
  ) AS `Número de Compatriotas`
FROM w3schools.customers AS C
GROUP BY CustomerID
HAVING `Número de Compatriotas` <> 0
ORDER BY Nome;

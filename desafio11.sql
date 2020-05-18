SELECT
  C1.CustomerID,
  C1.ContactName AS Nome,
  C1.Country AS País,
  COUNT(C2.CustomerID) AS 'Número de Compatriotas'
FROM w3schools.customers as C1, w3schools.customers as C2
WHERE C1.Country = C2.Country
AND C1.CustomerID <> C2.CustomerID
GROUP BY C1.CustomerID, C1.Country
ORDER BY Nome;

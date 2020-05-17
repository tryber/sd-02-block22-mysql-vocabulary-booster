SELECT 
  cust.CustomerID,
  cust.ContactName as 'Nome',
  cust.Country as 'País',
  (SELECT (COUNT(Country) - 1) FROM w3schools.customers AS num WHERE cust.Country = num.Country)
  AS `Número de Compatriotas`
FROM w3schools.customers as cust
WHERE (SELECT (COUNT(Country) - 1) FROM w3schools.customers AS num WHERE cust.Country = num.Country) > 0
ORDER BY 2;
SELECT cus.CustomerID, cus.ContactName as Nome, cus.Country as País,
	(SELECT DISTINCT COUNT(*) FROM w3schools.customers
	WHERE Country = cus.Country GROUP BY Country) AS 'Número de Compatriotas'
FROM w3schools.customers AS cus
GROUP BY cus.CustomerID
ORDER BY Nome ASC;
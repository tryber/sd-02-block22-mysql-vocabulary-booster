USE w3schools;
DELIMITER $$

CREATE FUNCTION Compatriotas(cus_country varchar(20), cus_customer_id int)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE compatriotas INT;
    SELECT COUNT(*) FROM w3schools.customers
	WHERE Country = cus_country
    AND customerID <> cus_customer_id
	GROUP BY Country INTO compatriotas;
    RETURN compatriotas;
END $$

DELIMITER ;

SELECT cus.CustomerID, cus.ContactName as Nome, cus.Country as País,
	Compatriotas(cus.Country, cus.CustomerID) AS 'Número de Compatriotas'
FROM w3schools.customers AS cus
WHERE Compatriotas(cus.Country, cus.CustomerID) IS NOT NULL
GROUP BY cus.CustomerID
ORDER BY Nome ASC;
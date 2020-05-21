-- Usando JOINS na tabela orders e customers do banco w3schools,
-- exiba as colunas OrderID,
-- CustomerID,
-- nome de contato do cliente e o id da empresa de envio (ShipperID).
-- Os resultados devem estar ordenados pelo CustomerID em ordem crescente e exibir apenas os
-- resultados em que o ShipperID for 1 ou 2.Sua query deve produzir 128 resultados.

SELECT
	ord.OrderID,
    ord.CustomerID,
    cus.ContactName,
    ord.ShipperID
FROM w3schools.orders AS ord
INNER JOIN w3schools.customers AS cus
ON ord.ShipperID BETWEEN 1 AND 2
AND ord.CustomerID = cus.CustomerID
ORDER BY ord.CustomerID;

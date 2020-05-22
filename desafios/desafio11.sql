-- Queremos saber o número de compatriotas de cada cliente presente na tabela customers do banco 
-- w3schools. Crie uma query que exiba o id do cliente, seu nome, apelidado de "Nome", o país em que reside,
-- com o apelido "País" e o número de pessoas que moram no mesmo país,
-- com o apelido "Número de Compatriotas".Os resultados devem ser ordenados pelo nome do cliente em 
-- ordem alfabética.Sua query deve produzir 88 resultados.

SELECT
  cust.CustomerID,
  cust.CustomerName AS `Nome`,
  cust.Country AS `País`,
  # COUNT(Country) AS `Número de Compatriotas`
  (
    SELECT
      DISTINCT (COUNT(Country) - 1)
    FROM
      w3schools.customers AS num
    WHERE
      cust.Country = num.Country
  ) AS `Número de Compatriotas`
FROM
  w3schools.customers AS cust
GROUP BY
  cust.CustomerID
HAVING
  `Número de Compatriotas` > 0
ORDER BY
  `Nome`;

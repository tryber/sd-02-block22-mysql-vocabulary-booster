SELECT
  customers.customerID,
  customers.contactName Nome,
  customers.country,
  `Número de compatriotas`
FROM
  w3schools.customers AS customers
  INNER JOIN (
    SELECT
      COUNTRY,
      COUNT(Country) - 1 AS 'Número de compatriotas'
    FROM
      w3schools.customers
    GROUP BY
      COUNTRY
  ) AS Countries ON Countries.country = customers.country
WHERE
  `Número de compatriotas` > 0
ORDER BY
  Nome;

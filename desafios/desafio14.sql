-- O banco w3schools possui países cadastrados nas tabelas customers e suppliers.
-- Queremos saber quais são os cinco primeiros países que estão cadastrados no banco,
-- em ordem alfabética, em qualquer uma das tabelas.Crie uma query que retorne esse resultado.

(
  SELECT
    Country
  FROM
    w3schools.customers
  ORDER BY
    Country
  LIMIT
    5
)
UNION
(
  SELECT
    Country
  FROM
    w3schools.suppliers
  ORDER BY
    Country
  LIMIT
    5
);

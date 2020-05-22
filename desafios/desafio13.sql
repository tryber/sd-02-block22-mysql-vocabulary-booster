-- Exiba o nome dos produtos e preço dos produtos cadastrados na tabela products do banco w3schools.
-- Porém, exiba somente produtos que têm uma quantidade de produtos correspondente maior que 80 na
-- tabela order_details.Sua query deve produzir exatamente 3 resultados e ser ordenada pelo nome do produto.

SELECT
  ProductName,
  Price
FROM
  w3schools.products,
  w3schools.order_details
WHERE
  order_details.ProductID = products.ProductID
  AND order_details.Quantity > 80
ORDER BY
  ProductName;

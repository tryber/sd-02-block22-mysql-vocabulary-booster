-- Usando a tabela order_details do banco w3schools,
-- queremos entender como cada produto está se saindo e,
-- para isso,
-- vamos analisar algumas informações sobre os últimos pedidos que foram registrados.
-- Exiba quatro colunas,
-- sendo que a primeira deve ser o ProductID.A segunda coluna deve exibir a quantidade
-- mínima que já foi pedida deste produto e deve ser apelidada de "Mínimo".A terceira coluna deve
-- exibir a quantidade máxima que já foi pedida deste produto e deve ser apelidada de "Máximo".
-- A quarta coluna deve exibir a média de quantidade nos pedidos deste produto,
-- arredondada para duas casas decimais e apelidada de "Média".Sua query deve exibir apenas os
-- produtos que possuem uma média de quantidade de pedidos registrados acima de 20.00.
-- Ordene seus resultados em ordem crescente com base na média de quantidade de pedidos.
-- Sua query deve produzir exatamente 48 registros.

SELECT
  ProductID,
  MIN(Quantity) AS `Mínimo`,
  MAX(Quantity) AS `Máximo`,
  ROUND(AVG(Quantity), 2) AS `Média`
FROM
  w3schools.order_details
GROUP BY
  ProductID
HAVING
  AVG(Quantity) > 20
ORDER BY
  `Média`;

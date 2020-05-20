-- Foi decidido que vamos continuar atendendo apenas à região 1.Sendo assim,
-- usando a tabela countries do banco hr como referência,
-- precisamos de um relatório em que deve ser exibido o nome do país na coluna country_name e uma
-- segunda coluna apelidada de Status Inclusão,
-- que exibirá o status do país.
-- Essa segunda coluna deve ser gerada com base no valor da coluna region_id e seu valor deve ser "incluído" ou "não incluído".
-- Utilize os comandos condicionais IF ou CASE
-- para gerar exatamente 25 resultados, como na imagem a seguir:

SELECT country_name, IF(region_id = 1, 'Incluído', 'Não Incluído') AS 'Status Inclusão'
FROM hr.countries;

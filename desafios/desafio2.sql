-- Foi decidido que vamos continuar atendendo apenas à região 1.Sendo assim,
-- usando a tabela countries do banco hr como referência,
-- precisamos de um relatório em que deve ser exibido o nome do país na coluna country_name e uma
-- segunda coluna apelidada de Status Inclusão,
-- que exibirá o status do país.
-- Essa segunda coluna deve ser gerada com base no valor da coluna region_id e seu valor deve ser "incluído" ou "não incluído".
-- Utilize os comandos condicionais IF ou CASE
-- para gerar exatamente 25 resultados, como na imagem a seguir:

SELECT job_title, max_salary,
  CASE
    WHEN max_salary BETWEEN 5000 AND 10000 THEN 'Baixo'
    WHEN max_salary BETWEEN 10001 AND 20000 THEN 'Médio'
    WHEN max_salary BETWEEN 20001 AND 30000 THEN 'Alto'
    ELSE 'Altíssimo'
  END AS 'Nível'
FROM hr.jobs;

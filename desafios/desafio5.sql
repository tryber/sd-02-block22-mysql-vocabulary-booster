-- Queremos exibir as informações em um formato mais próximo da realidade brasileira, portanto
-- estaremos usando os dados da tabela jobs do banco hr. Monte uma query utilizando a tabela jobs e
-- exiba quatro colunas. A primeira coluna deve exibir o nome do cargo, com o apelido "Cargo".
-- A segunda coluna deve exibir a variação salarial entre o salário mínimo e o salário máximo daquele
-- cargo, apelidando-a de "Variação Salarial". Na terceira coluna, exiba a média mínima mensal daquele
-- cargo, arredondando o valor com uma precisão de duas casas decimais. A terceira coluna deve ser
-- apelidada de "Média mínima mensal". Exiba na quarta coluna a média máxima mensal, arredondada com
-- uma precisão de duas casas decimais e apelide essa coluna de "Média máxima mensal".
-- Seu resultado deve estar ordenado em ordem crescente, usando a coluna "Variação salarial"
-- como base e deve produzir exatamente 19 resultados. Considere que os salários mínimo e máximo da
-- tabela jobs são salários anuais.

SELECT
	job_title AS 'Cargo',
	(max_salary - min_salary) AS 'Variação Salarial',
	CAST((min_salary) / 12 AS DECIMAL(10, 2)) AS 'Média mínima mensal',
    CAST((max_salary) / 12 AS DECIMAL(10,2)) AS 'Média máxima mensal'
FROM hr.jobs
ORDER BY 2;

-- Monte uma query usando a tabela employees do banco hr que exiba três colunas: o job_id, com o
-- apelido de "Código do Cargo", a média salarial de categoria, com o apelido de "Média" e por fim,
-- a classificação de cada categoria em nível de senioridade, com o apelido de "Senioridade", de
-- acordo com a tabela abaixo. Seus resultados devem ser ordenados em ordem crescente usando a média salarial. Considere que os salários mínimo e máximo da tabela jobs são salários anuais.

-- Média entre 2000 - 5800 -> 'Junior'

-- Média entre 5801 - 7500 -> 'Pleno'

-- Média entre 7501 - 10500 -> 'Sênior'

-- Média acima de 10500 -> 'CEO'

SELECT job_id AS 'Código do Cargo', AVG(salary) AS `Média`,
	CASE
		WHEN AVG(salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(salary) > 10500 THEN 'CEO'
	END AS 'Senioridade'
FROM hr.employees
GROUP BY job_id
ORDER BY `Média`;

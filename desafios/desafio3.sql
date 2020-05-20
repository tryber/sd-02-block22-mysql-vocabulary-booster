-- Usando o banco hr, crie uma query que exiba o job_title de todos os cargos registrados na tabela jobs.
-- A segunda coluna deve exibir a diferença média entre o salário mínimo e o salário máximo de todos os registros da tabela jobs e
-- deve ser apelidada de "Diferença média entre salários mínimos e máximos".
-- Todos os resultados devem estar agrupados por job_title.
-- Sua query deve estar ordenada pela média que foi calculada, produzindo exatos 19 resultados.

SELECT job_title, AVG(max_salary - min_salary) AS 'Diferença média entre os salários mínimos e máximos'
FROM hr.jobs
GROUP BY job_title
ORDER BY 2;

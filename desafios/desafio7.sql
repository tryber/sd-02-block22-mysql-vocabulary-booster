-- Usando as tabelas job_history e employees do banco hr,
-- monte um relatório com as seguintes características: a primeira coluna deve conter o employee_id do
-- empregado.A segunda coluna deve conter o nome completo desse funcionário em CAIXA ALTA (
--   não se esqueça do espaço entre o nome e o sobrenome
-- ).Apelide essa coluna de "Nome completo".A terceira coluna deve mostrar a data de in ício do
-- empregado naquele cargo (start_date).A quarta coluna deve exibir seu salário.Exiba somente os
-- funcionários que iniciaram nos meses 1,
-- 2 ou 3.Ordene seus resultados por nome completo em ordem alfabética.Sua query deve produzir
-- exatamente 6 registros.

SELECT
	em.employee_id,
    CONCAT(UPPER(em.first_name), ' ', UPPER(em.last_name)) AS `Nome completo`,
    jh.start_date,
    em.salary
FROM hr.employees AS em
INNER JOIN hr.job_history AS jh
ON em.employee_id = jh.employee_id
AND EXTRACT(MONTH FROM jh.start_date) BETWEEN 1 AND 3
ORDER BY `Nome completo`;

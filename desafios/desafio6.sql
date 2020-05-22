-- Usando as tabelas employees,
-- jobs e departments do banco hr,
-- monte uma query que exiba sete colunas,
-- sendo as três primeiras a start_date,
-- o employee_id e o nome completo do funcionário (
--   não se esqueça do espaço entre o nome e o sobrenome
-- ) com um apelido de "Nome completo".
-- As próximas duas colunas devem exibir o job_id e o nome do cargo,
-- com o apelido de "Cargo".Na sequência,
-- as próximas duas colunas devem exibir o id do departamento e o nome do departamento,
-- com o apelido "Departamento",
-- de todos os funcionários cadastrados na tabela job_history.Os resultados devem estar ordenados
-- pelo nome dos funcionários em ordem decrescente.Sua query deve produzir exatos 10 resultados.
SELECT
  hi.start_date,
  em.employee_id,
  CONCAT(em.first_name, ' ', em.last_name) AS `Nome Completo`,
  jo.job_id,
  jo.job_title AS `Cargo`,
  de.department_id,
  de.department_name As `Departamento`
FROM
  hr.job_history AS hi
  INNER JOIN hr.jobs AS jo ON hi.job_id = jo.job_id
  INNER JOIN hr.employees AS em ON hi.employee_id = em.employee_id
  INNER JOIN hr.departments AS de ON hi.department_id = de.department_id
ORDER BY
  `Nome Completo` DESC;

-- Usando o JOIN apropriado na tabela employees do banco hr,
-- monte uma query que exiba seis colunas.As três primeiras serão o first_name,
-- salary e phone_number do funcionário.As próximas três serão o first_name,
-- salary e phone_number de todos os funcionários que possuem o mesmo cargo.
-- Seus resultados devem ser ordenados pelo first_name da primeira coluna e devem produzir 1839 resultados.

SELECT
  em1.first_name,
  em1.salary,
  em1.phone_number,
  em2.first_name,
  em2.salary,
  em2.phone_number
FROM
  hr.employees AS em1
  INNER JOIN hr.employees AS em2 ON em1.job_id = em2.job_id
ORDER BY
  em1.first_name;

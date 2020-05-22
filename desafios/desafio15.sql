-- Crie uma procedure chamada BuscarMediaPorCategoriaDeTrabalho que recebe um parâmetro VARCHAR
-- correspondente a um job_id da tabela employees do banco de dados hr.Ao ser executada,
-- sua procedure deverá obter da tabela employees a média salarial arredondada deste trabalho,
-- arredondada para as duas casas decimais.Dica importante: não esqueça de incluir a linha USE hr;
-- antes da declaração de sua procedure.Quando sua procedure for executada com parâmetro 'IT_PROG',
-- deve retornar 5760.00.

USE hr;

DELIMITER $ $ CREATE PROCEDURE BuscarMediaPorCategoriaDeTrabalho(IN job_id VARCHAR(100)) BEGIN
SELECT
  ROUND(AVG(salary), 2)
FROM
  hr.employees
WHERE
  hr.employees.job_id = job_id;

END $ $ DELIMITER;

CALL BuscarMediaPorCategoriaDeTrabalho('IT_PROG');

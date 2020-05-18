use hr;
DROP PROCEDURE IF EXISTS ExibirQuantidadePessoasContratadasPorMesEAno ;
DELIMITER $$
CREATE PROCEDURE ExibirQuantidadePessoasContratadasPorMesEAno (in mes INT, in ano INT)
BEGIN
  select count(*) from employees where month(hire_date) = mes and year(hire_date) = ano;
END $$ DELIMITER ;
CALL ExibirQuantidadePessoasContratadasPorMesEAno (6, 1987);

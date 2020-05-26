use hr;
DROP FUNCTION IF EXISTS ExibirQuantidadePessoasContratadasPorMesEAno ;
DELIMITER $$
CREATE FUNCTION ExibirQuantidadePessoasContratadasPorMesEAno (mes INT, ano INT)
RETURNS INT
DETERMINISTIC
RETURN (select count(*) from employees where month(hire_date) = mes and year(hire_date) = ano);
$$ DELIMITER ;
CALL ExibirQuantidadePessoasContratadasPorMesEAno (6, 1987);

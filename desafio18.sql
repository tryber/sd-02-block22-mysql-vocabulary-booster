DROP FUNCTION ExibirQuantidadePessoasContratadasPorMesEAno;

USE hr;
DELIMITER $$

CREATE FUNCTION ExibirQuantidadePessoasContratadasPorMesEAno(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE hired_quantity INT;
    SELECT COUNT(*)
    FROM hr.employees
    WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano INTO hired_quantity;
    RETURN hired_quantity;
END $$

DELIMITER ;

SELECT ExibirQuantidadePessoasContratadasPorMesEAno(6, 1987);

USE hr;
DELIMITER $$

CREATE FUNCTION ExibirQuantidadePessoasContratadasPorMesEAno(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE QuantidadeFuncionariosContratados INT;
    SELECT COUNT(EMPLOYEE_ID)
    FROM hr.employees
    WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano
    INTO QuantidadeFuncionariosContratados;
    RETURN QuantidadeFuncionariosContratados;
END $$

DELIMITER ;

SELECT ExibirQuantidadePessoasContratadasPorMesEAno(6, 1987);

USE hr;
DELIMITER $$

CREATE FUNCTION BuscarQuantidadeDeEmpregosPorFuncionario(id VARCHAR(10))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE QuantidadeDeEmpregosPorFuncionario INT;
    SELECT COUNT(JOB_ID)
    FROM hr.job_history
    WHERE EMPLOYEE_ID = id
    GROUP BY EMPLOYEE_ID
    INTO QuantidadeDeEmpregosPorFuncionario;
    RETURN QuantidadeDeEmpregosPorFuncionario;
END $$

DELIMITER ;

SELECT BuscarQuantidadeDeEmpregosPorFuncionario(101);

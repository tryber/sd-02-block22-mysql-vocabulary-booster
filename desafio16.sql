USE hr;
DELIMITER $$

CREATE FUNCTION BuscarQuantidadeDeEmpregosPorFuncionario(employee int)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE jobs_quantity INT;
    SELECT COUNT(*)
    FROM hr.job_history
    WHERE employee_id = employee 
    GROUP BY employee_id INTO jobs_quantity;
    RETURN jobs_quantity;
END $$

DELIMITER ;

SELECT  BuscarQuantidadeDeEmpregosPorFuncionario(101);

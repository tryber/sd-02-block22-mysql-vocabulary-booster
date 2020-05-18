USE hr;
DELIMITER $$

CREATE FUNCTION BuscarQuantidadeDeEmpregosPorFuncionario(id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE job_quantity INT;
  SELECT COUNT(*) FROM job_history WHERE EMPLOYEE_ID = id INTO job_quantity;
  RETURN job_quantity;
END $$

DELIMITER ;
SELECT BuscarQuantidadeDeEmpregosPorFuncionario(101);

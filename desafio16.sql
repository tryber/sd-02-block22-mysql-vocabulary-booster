USE hr;
DELIMITER $$

CREATE FUNCTION BuscarQuantidadeDeEmpregosPorFuncionario(funcionarioID INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE num_empregos INT;
  SELECT COUNT(*)
  FROM hr.job_history
  WHERE hr.job_history.employee_id = funcionarioID INTO num_empregos;
  RETURN num_empregos;
END $$

DELIMITER ;

SELECT BuscarQuantidadeDeEmpregosPorFuncionario(101);

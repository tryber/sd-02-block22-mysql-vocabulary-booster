USE hr;
DELIMITER $$

CREATE PROCEDURE ExibirHistoricoCompletoPorFuncionario(employee_id INT)
BEGIN
  SELECT
    H.employee_id,
    (
      SELECT CONCAT(first_name, ' ', last_name)
      FROM hr.employees AS E
      WHERE E.employee_id = H.employee_id
    ) AS 'Nome Completo',
    (
      SELECT job_title
      FROM hr.jobs AS J
      WHERE J.job_id = H.job_id
    ) AS Cargo,
    (
      SELECT department_name
      FROM hr.departments AS D
      WHERE D.department_id = H.department_id
    ) AS Departamento
  FROM hr.job_history AS H
  WHERE H.employee_id = employee_id;
END $$

DELIMITER ;
CALL ExibirHistoricoCompletoPorFuncionario(101);

use hr;
DROP PROCEDURE IF EXISTS ExibirHistoricoCompletoPorFuncionario;
DELIMITER $$
CREATE PROCEDURE ExibirHistoricoCompletoPorFuncionario (in id INT)
BEGIN
  select
  e.employee_id,
  concat(first_name, ' ', last_name) as 'Nome Completo',
  j.job_title as Cargo,
  department_name as Departamento
  from job_history h
  join hr.employees as e on e.employee_id = h.employee_id
  join hr.departments as d on h.department_id = d.department_id
  join hr.jobs as j on h.job_id = j.job_id
  where e.employee_id = id;
END $$ DELIMITER ;
select ExibirHistoricoCompletoPorFuncionario (101) as coisa;

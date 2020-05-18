SELECT
  employee_id,
  DATE_FORMAT(start_date,'%d/%m/%Y') AS 'Data Início',
  DATE_FORMAT(end_date,'%d/%m/%Y') AS 'Data Rescisão',
  ROUND(DATEDIFF(end_date, start_date) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history
ORDER BY employee_id;

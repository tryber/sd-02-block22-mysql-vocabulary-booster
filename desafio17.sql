SELECT employee_id, 
	DATE_FORMAT(start_date,'%d/%m/%Y') AS 'Data Início',
	DATE_FORMAT(end_date,'%d/%m/%Y') AS 'Data Rescisão',
    ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history
ORDER BY employee_id ASC;

SELECT 
    EMPLOYEE_ID, 
    DATE_FORMAT(START_DATE, '%d/%m/%Y') AS `Data Início`,
    DATE_FORMAT(END_DATE, '%d/%m/%Y') AS `Data Rescisão`,
    ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) AS `Anos trabalhados`
FROM hr.job_history
ORDER BY EMPLOYEE_ID;

### OUTRA FORMA ###
# SELECT 
#     EMPLOYEE_ID, 
#     CONCAT(DAY(START_DATE), '/', MONTH(START_DATE), '/', YEAR(START_DATE)) AS `Data Início`,
#     CONCAT(DAY(END_DATE), '/', MONTH(END_DATE), '/', YEAR(END_DATE)) AS `Data Rescisão`,
#     ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) AS `Anos trabalhados`
# FROM hr.job_history
# ORDER BY EMPLOYEE_ID;

SELECT country_name, 
IF(region_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão' 
FROM hr.countries;
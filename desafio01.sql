SELECT country_name, (
SELECT IF (region_ID = 1, 'incluido', 'não incluido')
) AS 'Status Inclusão' FROM hr.countries;
 
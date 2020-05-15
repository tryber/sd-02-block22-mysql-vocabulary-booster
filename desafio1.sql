SELECT
country_name,
IF(REGION_ID = 1, 'incluído', 'não incluído') AS `Status Inclusão`
FROM hr.countries
LIMIT 25;

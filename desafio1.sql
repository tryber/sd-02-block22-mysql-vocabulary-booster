select country_name,
	CASE
        WHEN region_id = 1 THEN 'incluído'
        ELSE 'não incluído'
    END
     as 'Status Inclusão'
from hr.countries;

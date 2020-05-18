select country_name,
if (region_id = 1, 'incluido', 'nao incluido') as status_inclusao
from hr.countries;
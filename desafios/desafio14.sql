select distinct(country) from w3schools.customers
union
select distinct(country) from w3schools.suppliers
order by 1 limit 5;

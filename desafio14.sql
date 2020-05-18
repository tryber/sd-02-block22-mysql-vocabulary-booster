select country from w3schools.customers
union
select country from w3schools.suppliers
order by country;

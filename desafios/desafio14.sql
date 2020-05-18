(select country from w3schools.customers order by 1 limit 5)
union
(select country from w3schools.suppliers order by 1 limit 5)
order by 1;

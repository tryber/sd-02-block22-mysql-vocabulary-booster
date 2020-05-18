(
select Country from w3schools.customers order by Country limit 5
)
union
select Country from w3schools.suppliers
order by Country
limit 5;

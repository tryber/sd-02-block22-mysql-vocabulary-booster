select
CustomerID,
CustomerName as Nome,
Country as País,
count(Country - 1) as 'Número de compatriotas'
from w3schools.customers
group by Country
order by CustomerName
limit 88;

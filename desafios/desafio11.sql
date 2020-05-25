select
cust.customerid as CustomerID,
cust.contactName as 'Nome',
cust.country as 'País',
count(cust.country) - 1 as 'Número de Compatriotas'
from w3schools.customers as cust
inner join w3schools.customers as secCust on secCust.country = cust.country
group by 3, 1
having count(cust.country) > 1
order by 2;

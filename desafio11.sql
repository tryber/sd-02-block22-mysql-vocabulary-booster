select
cus.CustomerID,
cus.ContactName as Name,
cus.Country as Pais,
t1.Total_Compatriotas
from w3schools.customers as cus
inner join (
select Country, (count(*) - 1) as Total_Compatriotas
from w3schools.customers
group by Country
) as t1 on cus.Country = t1.Country
where Total_Compatriotas <> 0
order by Name;
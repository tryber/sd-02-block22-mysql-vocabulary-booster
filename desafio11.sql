select 
  CustomerID,
  ContactName as 'Nome',
  Country as 'País',
  (select (COUNT(Country) - 1) from w3schools.customers as B where A.Country = B.Country)
  as `Número de Compatriotas`
from w3schools.customers as A
having `Número de Compatriotas` > 0
order by ContactName ;

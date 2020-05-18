select
OrderID,
c.CustomerID,
ContactName,
o.ShipperID
from w3schools.customers as c
join w3schools.orders as o
having o.ShipperID in (1, 2)
order by c.CustomerID
limit 128;

select
OrderID,
c.CustomerID,
c.ContactName,
o.ShipperID
from w3schools.customers as c
join w3schools.orders as o on c.customerid = o.customerid
where o.ShipperID in (1, 2)
order by c.CustomerID
limit 128;

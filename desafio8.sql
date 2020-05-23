select
ords.orderID,
ords.customerID,
cu.ContactName,
ords.shipperid
from w3schools.orders as ords
inner join w3schools.customers as cu on ords.CustomerID = cu.CustomerID
where ords.ShipperID in (1, 2)
order by cu.CustomerID;

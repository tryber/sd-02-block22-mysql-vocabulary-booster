select
ords.orderid,
cust.customerid,
cust.contactName,
ords.shipperid
from w3schools.orders AS ords
inner join w3schools.customers as cust on cust.customerid = ords.customerid
where shipperid in (1, 2)
order by cust.customerid;

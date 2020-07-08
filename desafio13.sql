select 
productname,
Price
from w3schools.products p
join w3schools.order_details d on p.productID = d.productID
where d.quantity > 80
order by productname;

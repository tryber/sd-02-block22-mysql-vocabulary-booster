select prod.productname, prod.price
from w3schools.products as prod
inner join w3schools.order_details as ord on ord.productid = prod.ProductID
where Quantity > 80
order by 1;

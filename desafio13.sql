select
pr.ProductName,
pr.Price
from w3schools.products as pr
inner join w3schools.order_details as ords on pr.ProductID = ords.ProductID
where ords.quantity > 80
order by pr.ProductName;

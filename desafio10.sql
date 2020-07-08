select
productID,
min(quantity) as 'Mínimo',
max(quantity) as 'Máximo',
round(avg(quantity), 2) as 'Média'
from w3schools.order_details
group by productID
having avg(quantity) > 20
order by avg(quantity)
limit 48;

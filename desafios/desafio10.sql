select
productid,
min(quantity) as 'Mínimo',
max(quantity) as 'Máximo',
round(avg(quantity), 2) as 'Média'
from w3schools.order_details
group by productid
having avg(quantity) > 20
order by 4;

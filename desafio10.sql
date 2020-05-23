select
ProductID,
min(quantity) as Minimo,
max(quantity) as Maximo,
round(avg(quantity), 2) as Media
from w3schools.order_details
group by ProductID
having round(avg(quantity), 2) > 20.00
order by Media;

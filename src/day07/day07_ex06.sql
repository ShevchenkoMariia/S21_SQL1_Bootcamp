select 
	pz.name, 
	count(po.order_date) as count_orders, 
	round(avg(price)) as average_price, 
	round(max(price))as max_price, 
	round(min(price)) as min_price
from pizzeria pz
	join menu m on pz.id=m.pizzeria_id
	join person_order po on po.menu_id=m.id
group by 1
order by 1;




select 
	p.name as name, 
	m.pizza_name as pizza_name, 
	m.price as price, 
	round(m.price-(pd.discount/100*m.price)) as discount_price, 
	pz.name as pizzeria_name
from person_discounts pd
	join person p on pd.person_id=p.id
	join pizzeria pz on pd.pizzeria_id=pz.id
	join menu m on m.pizzeria_id=pz.id
order by p.name, m.pizza_name;

--код написан с учётом, что скидка расчитывается для каждой пиццерии отдельно в зависимости от количества заказов
insert into person_discounts (id, person_id, pizzeria_id, discount)
select 
	row_number() over() id, 
	po.person_id,
	m.pizzeria_id,
	(
		case 
		when count(po.person_id) = 1 then 10.05
		when count(po.person_id) = 2 then 22
		else 30 
		end
	) as discount
from person_order po join menu m on po.menu_id=m.id
group by po.person_id, m.pizzeria_id
order by po.person_id;

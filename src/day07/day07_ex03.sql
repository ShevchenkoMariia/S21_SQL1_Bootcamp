with orders as (
        select name, count(order_date) as count, 'order' as action_type
        from person_order po
                join menu m on po.menu_id=m.id
                join pizzeria pz on pz.id=m.pizzeria_id
        group by pz.name
        order by count desc, name
), visits as (
        select name, count(visit_date) as count, 'visit' as action_type
        from person_visits pv
                join pizzeria pz on pz.id=pv.pizzeria_id
        group by name
        order by count desc, name
)

select o.name as name, (o.count+v.count) as total_count 
from orders o join visits v on o.name=v.name
order by total_count desc, name asc;


select name, count(visit_date) as count_of_visits
from person_visits pv join person p
	on pv.person_id=p.id
group by name
having count(visit_date) > 3;

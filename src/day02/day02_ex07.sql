SELECT name AS pizzeria_name
  FROM pizzeria AS pz
  JOIN person_visits AS pv ON pz.id = pv.pizzeria_id
  JOIN menu AS m ON m.pizzeria_id = pv.pizzeria_id
 WHERE 
	pv.person_id = (SELECT id FROM person WHERE name = 'Dmitriy')
	AND m.price < 800
	AND pv.visit_date = '2022-01-08';

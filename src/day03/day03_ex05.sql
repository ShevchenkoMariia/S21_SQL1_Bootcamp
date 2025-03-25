SELECT DISTINCT pz.name AS pizzeria_name
  FROM pizzeria AS pz
  JOIN person_visits AS pv ON pv.pizzeria_id = pz.id
  JOIN person AS p ON p.id = pv.person_id
  JOIN person_order AS po ON pv.person_id = po.person_id
 WHERE p.name = 'Andrey' AND pv.visit_date != po.order_date;

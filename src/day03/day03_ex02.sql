SELECT pizza_name, price, pz.name AS pizzeria_name
  FROM menu
  JOIN pizzeria AS pz ON menu.pizzeria_id = pz.id
 WHERE menu.id NOT IN(SELECT menu_id FROM person_order)
 ORDER BY 1, 2;

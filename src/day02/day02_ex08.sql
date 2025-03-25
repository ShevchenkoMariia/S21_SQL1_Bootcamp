SELECT p.name AS name
  FROM person AS p
  JOIN person_order AS po ON po.person_id = p.id
  JOIN menu AS m ON m.id = po.menu_id
 WHERE
        p.address IN('Moscow', 'Samara')
        AND p.gender = 'male'
        AND m.pizza_name IN('pepperoni pizza', 'mushroom pizza')
ORDER BY p.name DESC;

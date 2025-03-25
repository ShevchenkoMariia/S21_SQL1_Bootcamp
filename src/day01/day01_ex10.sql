SELECT
        pr.name AS person_name,
        pizza_name,
        pz.name AS pizzeria_name
  FROM person_order AS po
  JOIN person AS pr
    ON po.person_id = pr.id
  JOIN menu AS m
    ON po.menu_id = m.id
  JOIN pizzeria AS pz
    ON m.pizzeria_id =pz.id
 ORDER BY person_name, pizza_name, pizzeria_name;

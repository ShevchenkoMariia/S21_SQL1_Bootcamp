SELECT name, rating
  FROM pizzeria
  LEFT JOIN person_visits AS pv
    ON pv.pizzeria_id = pizzeria.id
 WHERE pv.pizzeria_id IS NULL;

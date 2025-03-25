WITH info AS (
        SELECT pizza_name, pz.name AS pizzeria_name, price, pz.id AS id
          FROM menu
          JOIN pizzeria AS pz ON pz.id = menu.pizzeria_id
)
SELECT
        i1.pizza_name AS pizza_name,
        i1.pizzeria_name AS pizzeria_name_1,
        i2.pizzeria_name AS pizzeria_name_2,
        i1.price AS price
  FROM info AS i1
  JOIN info AS i2 ON i1.pizza_name = i2.pizza_name
 WHERE
        i1.id > i2.id
        AND i1.price = i2.price
        AND i1.pizzeria_name != i2.pizzeria_name
 ORDER BY 1;

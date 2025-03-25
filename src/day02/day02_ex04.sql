SELECT
        m.pizza_name AS pizza_name,
        pz.name AS pizzeria_name,
        m.price AS price
 FROM menu AS m
RIGHT JOIN pizzeria AS pz
        ON m.pizzeria_id = pz.id
WHERE pizza_name LIKE 'mushroom%' OR pizza_name LIKE 'pepperoni%'
ORDER BY pizza_name, pizzeria_name;

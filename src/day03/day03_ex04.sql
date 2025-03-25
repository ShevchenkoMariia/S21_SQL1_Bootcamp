WITH male AS (
        SELECT pz.name AS pizzeria_name
          FROM person_order AS po
          JOIN person AS p ON p.id = po.person_id
          JOIN menu AS m ON m.id = po.menu_id
          JOIN pizzeria AS pz ON pz.id = m.pizzeria_id
         WHERE p.gender = 'male'
         GROUP BY 1
), female AS (
        SELECT pz.name AS pizzeria_name
          FROM person_order AS po
          JOIN person AS p ON p.id = po.person_id
          JOIN menu AS m ON m.id = po.menu_id
          JOIN pizzeria AS pz ON pz.id = m.pizzeria_id
         WHERE p.gender = 'female'
         GROUP BY 1
)
SELECT pizzeria_name FROM female
EXCEPT
SELECT pizzeria_name FROM male
 ORDER BY pizzeria_name;

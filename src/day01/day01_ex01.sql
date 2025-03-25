SELECT pizza_name AS object_name
  FROM person_order, menu
 UNION
SELECT name AS object_name
  FROM person_order, person
 ORDER BY object_name;

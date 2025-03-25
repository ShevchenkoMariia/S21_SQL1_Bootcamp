SELECT menu_id AS object_id, pizza_name AS object_name
  FROM person_order, menu
 WHERE person_order.menu_id = menu.id
 UNION
SELECT person_id AS object_id, name AS object_name
  FROM person_order, person
 WHERE person_order.person_id = person.id
 ORDER BY object_id, object_name;                                          

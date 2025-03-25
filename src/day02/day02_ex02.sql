SELECT
        COALESCE(p.name, '-') AS person_name,
        pv.visit_date,
        COALESCE(pz.name, '-') AS pizzeria_name
  FROM person AS p
  FULL OUTER JOIN (
                SELECT person_id, visit_date, pizzeria_id
                FROM person_visits
                WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03'
        ) AS pv
        ON pv.person_id = p.id
  FULL OUTER JOIN pizzeria AS pz
        ON pz.id = pv.pizzeria_id
 ORDER BY person_name, visit_date;

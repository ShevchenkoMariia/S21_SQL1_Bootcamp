SELECT DATE(all_date) AS missing_date
  FROM person_visits AS pv
 RIGHT JOIN
        GENERATE_SERIES('2022-01-01','2022-01-10','1 day'::interval) AS all_date
        ON all_date = pv.visit_date AND person_id BETWEEN 1 AND 2
 WHERE pv.visit_date IS NULL;

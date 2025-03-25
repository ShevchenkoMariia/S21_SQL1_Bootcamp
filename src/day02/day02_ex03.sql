WITH dateCTE(list_date) AS (
        SELECT DATE(all_date) AS list_date
        FROM GENERATE_SERIES('2022-01-01','2022-01-10','1 day'::interval) AS all_date)
SELECT list_date AS missing_date
  FROM person_visits AS pv
 RIGHT JOIN dateCTE AS cte
        ON cte.list_date = pv.visit_date AND person_id BETWEEN 1 AND 2
 WHERE pv.visit_date IS NULL;

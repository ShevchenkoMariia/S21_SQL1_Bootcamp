WITH info AS (
	SELECT pz.name AS pizzeria_name, 
	SUM(CASE WHEN p.gender = 'male' THEN 1 ELSE 0 END) AS male,
	SUM(CASE WHEN p.gender = 'female' THEN 1 ELSE 0 END) AS female
	FROM person_visits AS pv
	JOIN person AS p ON p.id = pv.person_id
	JOIN pizzeria AS pz ON pz.id = pv.pizzeria_id
	GROUP BY pizzeria_name
)
SELECT pizzeria_name
FROM info
WHERE male <> female
ORDER BY 1;


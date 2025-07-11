SELECT pizza_name, price, pizzeria.name AS pizzeria_name, visit_date
FROM person_visits
JOIN person_visits ON person_visits.person_id = person.id
JOIN menu ON person_visits.pizzeria_id = menu.pizzeria_id
JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
WHERE person.name = 'Kate' AND price BETWEEN 800 AND 1000
ORDER BY pizza_name, price, pizzeria_name

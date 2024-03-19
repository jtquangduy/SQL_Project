SELECT 
t.ticket_no,
passenger_name,
f.scheduled_departure
FROM tickets t
INNER JOIN ticket_flights tf
ON t.ticket_no = tf.ticket_no
INNER JOIN flights f
ON f.flight_id = tf.flight_id
 
SELECT 
first_name,
last_name,
email,
country
FROM customer cu
INNER JOIN address ad
ON cu.address_id = ad.address_id
INNER JOIN city ct
ON ad.city_id = ct.city_id
INNER JOIN country cty
ON ct.country_id = cty.country_id AND country = 'Brazil'



SELECT 
passenger_name,
SUM(total_amount) AS sum_amount
FROM tickets t
INNER JOIN bookings b
ON t.book_ref = b.book_ref
GROUP BY passenger_name
ORDER BY sum_amount DESC
LIMIT 1

SELECT 
fare_conditions,
COUNT(*)
FROM tickets t
INNER JOIN ticket_flights tf
ON t.ticket_no = tf.ticket_no AND passenger_name = 'ALEKSANDR IVANOV'
GROUP BY fare_conditions, passenger_name
ORDER BY 2 DESC
LIMIT 1

SELECT passenger_name, fare_conditions, COUNT(*) FROM tickets t
INNER JOIN bookings b
ON t.book_ref=b.book_ref
INNER JOIN ticket_flights tf
ON t.ticket_no=tf.ticket_no
WHERE passenger_name = 'ALEKSANDR IVANOV'
GROUP BY fare_conditions, passenger_name

SELECT 
title,
COUNT(*)
FROM customer c
JOIN rental r
ON c.customer_id = r.customer_id AND first_name || ' ' || last_name = 'GEORGE LINTON'
JOIN inventory i
ON r.inventory_id = i.inventory_id
JOIN film f
ON i.film_id = f.film_id
GROUP BY title
ORDER BY 2 DESC
LIMIT 1

SELECT first_name, last_name, title, COUNT(*)
FROM customer cu
INNER JOIN rental re
ON cu.customer_id = re.customer_id
INNER JOIN inventory inv
ON inv.inventory_id=re.inventory_id
INNER JOIN film fi
ON fi.film_id = inv.film_id
WHERE first_name='GEORGE' and last_name='LINTON'
GROUP BY title, first_name, last_name
ORDER BY 4 DESC
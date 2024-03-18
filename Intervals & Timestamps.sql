SELECT 
CURRENT_TIMESTAMP,
Extract(day from return_date-rental_date)*24 + Extract(hour from return_date-rental_date) || ' hours'
FROM rental

SELECT 
CURRENT_TIMESTAMP,
return_date-rental_date
FROM rental


SELECT 
return_date-rental_date AS rental_durations
FROM rental
WHERE customer_id = 35

SELECT 
customer_id,
AVG(return_date-rental_date) AS rental_durations
FROM rental
GROUP BY customer_id
ORDER BY rental_durations DESC
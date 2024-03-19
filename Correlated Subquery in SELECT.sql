SELECT *, 
(SELECT MAX(amount) 
FROM payment p2 
WHERE p1.customer_id = p2.customer_id) 
FROM payment p1
ORDER BY customer_id

SELECT 
payment_id,
customer_id,
staff_id,
amount,
(
	SELECT SUM(amount) AS sum_amount 
	FROM payment p2 
	WHERE p1.customer_id = p2.customer_id
), 
(
	SELECT COUNT(*) AS count_payments
	FROM payment p2 
	WHERE p1.customer_id = p2.customer_id
)
FROM payment p1
ORDER BY customer_id, amount DESC



SELECT 
title,
rating,
replacement_cost,
ROUND((
	SELECT AVG(replacement_cost)
	FROM film f2
	WHERE f1.rating = f2.rating
),2) AS avg_replacement_cost
FROM film f1
WHERE replacement_cost = 
(
	SELECT MAX(replacement_cost)
	FROM film f3
	WHERE f1.rating = f3.rating
)

SELECT 
first_name,
amount,
payment_id
FROM customer cu
JOIN payment pa1
ON cu.customer_id = pa1.customer_id
WHERE amount =
(
	SELECT MAX(amount) 
	FROM payment pa2
	WHERE pa1.customer_id = pa2.customer_id
)
ORDER BY first_name

SELECT 
first_name,
MAX(amount)
FROM customer cu
JOIN payment pa1
ON cu.customer_id = pa1.customer_id
GROUP BY first_name


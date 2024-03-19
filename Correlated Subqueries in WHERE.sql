SELECT *
FROM payment p1
WHERE amount > (
	SELECT AVG(amount)
	FROM payment p2
	WHERE p1.customer_id = p2.customer_id
)


SELECT *
FROM payment p1
WHERE amount > (
	SELECT AVG(amount)
	FROM payment p2
	WHERE p1.customer_id = p2.customer_id
)

SELECT *
FROM payment p1
WHERE amount = (
	SELECT MAX(amount)
	FROM payment p2
	WHERE p1.customer_id = p2.customer_id
)
ORDER BY customer_id

SELECT title,film_id,replacement_cost, rating
FROM film f1
WHERE replacement_cost =  
(
	SELECT MIN(replacement_cost)
	FROM film f2 
	WHERE f1.rating = f2.rating
)

SELECT 
title, 
film_id, 
rating, 
length
FROM film f1
WHERE length =  
(
	SELECT MAX(length)
	FROM film f2 
	WHERE f1.rating = f2.rating
)

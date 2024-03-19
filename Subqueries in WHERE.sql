SELECT *
FROM payment
WHERE amount >
(
	SELECT 
	AVG(amount) 
	FROM PAYMENT
)

SELECT *
FROM payment
WHERE customer_id =
(
	SELECT 
	customer_id
	FROM customer
	WHERE first_name = 'ADAM'
)


SELECT *
FROM payment
WHERE customer_id IN
(
	SELECT 
	customer_id
	FROM customer
	WHERE first_name LIKE 'A%'
)

SELECT *
FROM film
WHERE length > 
(
	SELECT 
	AVG(length)
	FROM film
)

SELECT *
FROM film
WHERE film_id IN 
(
	SELECT 
	film_id
	FROM inventory 
	WHERE store_id = 2
	GROUP BY film_id
	HAVING COUNT(*) > 3
)

SELECT first_name,last_name
FROM customer
WHERE customer_id IN 
(
	SELECT 
	customer_id
	FROM payment 
	--WHERE payment_date BETWEEN '2020-01-25' AND '2020-01-26'
	WHERE DATE(payment_date) = '2020-01-25'
)

SELECT first_name,email
FROM customer
WHERE customer_id IN 
(
	SELECT 
	customer_id
	FROM payment 
	GROUP BY customer_id
	HAVING SUM(amount) > 30
)

SELECT first_name,last_name
FROM customer
WHERE address_id IN (
	SELECT address_id
	FROM address
	WHERE district = 'California'
) AND customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 100
)

SELECT first_name,last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM customer cu
	INNER JOIN address ad
	ON ad.address_id = cu.address_id AND district = 'California'
) AND customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 100
)
SELECT COUNT(*) 
FROM payment
WHERE amount = 0

SELECT first_name, last_name
FROM customer
WHERE first_name = 'ADAM'

SELECT name, price
FROM products
WHERE category = 'Electronics'
ORDER BY price asc

SELECT COUNT(*)
FROM payment
WHERE customer_id = 100

SELECT last_name
FROM customer
WHERE first_name = 'ERICA'

SELECT *
FROM payment
WHERE amount > 10
ORDER BY amount DESC

SELECT name,price
FROM products
WHERE price > 200
ORDER BY price ASC

SELECT COUNT(*)
FROM rental
WHERE return_date is null

SELECT payment_id, amount
FROM payment
WHERE amount <= 2
ORDER BY amount DESC

SELECT * FROM payment
WHERE (customer_id = 30 
OR customer_id = 31)
AND amount = 2.99

SELECT name , price
FROM products
WHERE category = 'Electronics' AND price  > 200
ORDER BY price ASC

SELECT * 
FROM payment
WHERE 
(customer_id = 322 OR customer_id = 346 OR customer_id = 354)
AND 
(amount < 2 OR amount > 10)
ORDER BY customer_id ASC, amount DESC
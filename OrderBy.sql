SELECT *
FROM PAYMENT
ORDER BY customer_id, amount desc


SELECT * FROM books
ORDER BY price DESC

SELECT first_name, last_name , email
FROM customer
ORDER BY last_name DESC, first_name DESC

SELECT first_name, last_name , email
FROM customer
ORDER BY 2 DESC, 1 DESC
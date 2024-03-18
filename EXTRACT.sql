SELECT 
EXTRACT(MONTH from rental_date),
COUNT(*)
FROM rental
GROUP BY EXTRACT(MONTH from rental_date)
ORDER BY COUNT(*) DESC


SELECT 
EXTRACT(month from payment_date) AS "month",
SUM(amount) AS total_payment_amount
FROM payment
GROUP BY EXTRACT(month from payment_date)
ORDER BY total_payment_amount DESC

SELECT 
EXTRACT(dow from payment_date) AS day_of_week,
SUM(amount) AS total_payment_amount
FROM payment
GROUP BY day_of_week
ORDER BY total_payment_amount DESC


SELECT 
customer_id,
EXTRACT(week from payment_date) AS week,
SUM(amount) AS total_payment_amount
FROM payment
GROUP BY week, customer_id
ORDER BY total_payment_amount DESC
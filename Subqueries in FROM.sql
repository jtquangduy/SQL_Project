SELECT ROUND(AVG(total_amount),2) as avg_lifetime_sp
FROM 
(
	SELECT customer_id,SUM(amount) AS total_amount
	FROM payment
	GROUP BY customer_id
) AS subquery


SELECT ROUND(AVG(amount_per_day),2) as daily_rev_avg
FROM 
(
	SELECT DATE(payment_date),SUM(amount) AS amount_per_day
	FROM payment
	GROUP BY DATE(payment_date)
) AS subquery



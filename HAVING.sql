SELECT 
staff_id,
SUM(amount) as sum_of_amount,
DATE(payment_date) AS paymentdate,
COUNT(DATE(payment_date))
FROM payment
WHERE amount != 0
GROUP BY staff_id,DATE(payment_date)
HAVING COUNT(*) = 28 OR COUNT(*) = 29
ORDER BY 4 DESC

SELECT
City,
AVG(Amount) AS AverageAmount
FROM Sales
GROUP BY City
HAVING Count(*) > 2 AND AverageAmount > 150
ORDER BY AverageAmount

SELECT 
customer_id,
COUNT(customer_id) as no_of_payment_perday,
DATE(payment_date) as paymentdate,
ROUND(AVG(amount),2) AS avg_amount
FROM payment
WHERE payment_date BETWEEN ('2020-04-28') AND ('2020-05-01')
GROUP BY customer_id, paymentdate
HAVING COUNT(*) > 1
ORDER BY avg_amount desc

SELECT * 
FROM payment

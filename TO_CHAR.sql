SELECT 
SUM(amount),
TO_CHAR(payment_date,'Dy, Month YYYY') AS "day"
FROM payment
GROUP BY TO_CHAR(payment_date,'Dy, Month YYYY')

SELECT 
SUM(amount),
TO_CHAR(payment_date,'Dy, dd/mm/yyyy') AS "day"
FROM payment
GROUP BY TO_CHAR(payment_date,'Dy, dd/mm/yyyy')
ORDER BY SUM(amount)

SELECT 
SUM(amount) AS total_amount,
TO_CHAR(payment_date,'Dy, dd/mm/yyyy') AS day
FROM payment
GROUP BY day
ORDER BY total_amount DESC

SELECT 
SUM(amount) AS total_payment,
TO_CHAR(payment_date,'Mon, yyyy') AS day
FROM payment
GROUP BY day
ORDER BY total_payment ASC

SELECT 
SUM(amount) AS total_payment,
TO_CHAR(payment_date,'Dy, HH:MI') AS Day_time
FROM payment
GROUP BY Day_time
ORDER BY total_payment DESC
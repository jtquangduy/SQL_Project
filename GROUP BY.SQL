SELECT 
customer_id,
SUM(amount),
Max(amount)
FROM payment
WHERE customer_id >3
GROUP BY customer_id
ORDER BY customer_id

SELECT 
category,
SUM(quantity) as total_quantity,
SUM(sale_amount) as total_sales_amount
FROM sales_data
GROUP BY category
ORDER BY total_sales_amount desc

SELECT 
staff_id,
SUM(amount),
COUNT(*)  
FROM payment
WHERE amount != 0
GROUP BY staff_id
ORDER BY SUM(amount) DESC

SELECT 
category,
sale_date, 
COUNT(*) AS total_items_sold,
SUM(amount) AS total_sales_amount
FROM sales
GROUP BY category, sale_date
ORDER BY category ASC, sale_date ASC

SELECT 
staff_id,
customer_id,
SUM(amount),
COUNT(*)  
FROM payment
GROUP BY staff_id, customer_id
ORDER BY COUNT(*)  DESC


SELECT 
staff_id,
SUM(amount) as sum_of_amount,
DATE(payment_date) AS paymentdate,
COUNT(DATE(payment_date))
FROM payment
GROUP BY staff_id, paymentdate
ORDER BY sum_of_amount DESC

SELECT 
staff_id,
SUM(amount) as sum_of_amount,
DATE(payment_date) AS paymentdate,
COUNT(DATE(payment_date))
FROM payment
WHERE amount != 0
GROUP BY staff_id,DATE(payment_date)
ORDER BY 4 DESC

SELECT * FROM payment
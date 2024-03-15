SELECT * FROM customer
WHERE customer_id IN (123,212,323,243,353,432)

SELECT * FROM customer
WHERE first_name IN ('LYDIA','MATTHEW')

SELECT DISTINCT customer_id
FROM orders
WHERE product_name IN ('Laptop','Tablet','Smartphone')

SELECT * FROM payment
WHERE customer_id  IN (12,25,67,93,124,234)
AND amount IN (4.99,7.99,9.99) 
AND payment_date BETWEEN '2020-01-01' AND '2020-02-01'
SELECT 
LEFT(first_name,1) || '.' || LEFT(last_name,1) || '.' AS initails,
first_name,
last_name
FROM customer

SELECT 
(name || ' - ' || category || ': $' || price) as 'product_summary'
FROM products
ORDER BY name ASC

SELECT 
LEFT(first_name,1) || '***' || Right(email,19) AS anonymized_email
FROM customer
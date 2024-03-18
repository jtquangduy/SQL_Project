SELECT
LEFT(first_name,1),
first_name
FROM customer

SELECT
RIGHT(first_name,3),
first_name
FROM customer 

SELECT 
RIGHT(email,5)
FROM customer

SELECT 
LEFT(RIGHT(email,4),1)
FROM customer
SELECT 
LEFT(email,POSITION('@' in email) - 1),
email
FROM customer

SELECT 
LEFT(email,POSITION(last_name in email)-2),
email
FROM customer

SELECT 
last_name || ', ' || LEFT(email,POSITION(last_name in email)-2)
FROM customer

SELECT 
last_name || ', ' || LEFT(email,POSITION('.' IN email)-1)
FROM customer
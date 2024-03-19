SELECT first_name AS first_name,'actor' AS origin FROM actor
UNION
SELECT first_name,'customer' AS test FROM customer
UNION
SELECT UPPER(first_name),'staff' FROM staff
ORDER BY 2 DESC
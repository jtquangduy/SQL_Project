SELECT 
COUNT(*) AS no_of_movie
FROM film
WHERE description LIKE '%Saga%' 
AND (title LIKE 'A%' OR title LIKE '%R')

SELECT * FROM customer
WHERE first_name LIKE '_A%ER%'
ORDER BY last_name DESC 

SELECT * FROM customer
WHERE first_name LIKE '%ER%' AND first_name LIKE '_A%'
ORDER BY last_name DESC 

SELECT COUNT(*) FROM payment
WHERE (amount = 0 OR amount BETWEEN 3.99 AND 7.99 )
AND (payment_date BETWEEN '2020-05-01' AND '2020-05-02')
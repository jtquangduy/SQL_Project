SELECT * FROM film
WHERE description LIKE '%Drama%'
AND title LIKE '_T%'

SELECT CustomerName,ProductID,ReviewText
FROM CustomerReviews
WHERE ReviewText LIKE '%love%'

SELECT COUNT(*) FROM customer
WHERE first_name LIKE '___' 
AND (last_name LIKE '%X' OR last_name LIKE '%Y')

SELECT COUNT(*) FROM film
WHERE description LIKE '%Documentary%'
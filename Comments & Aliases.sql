SELECT 
title, 
description AS description_of_movie, 
release_year
FROM film
WHERE description LIKE '%Documentary%'

SELECT 
COUNT(*) AS number_of_movie
FROM film
WHERE description LIKE '%Documentary%'
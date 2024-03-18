SELECT 
product_name,
SUM(quantity_sold * price_per_unit) AS total_revenue
FROM sales
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 1


SELECT  
film_id,
ROUND(rental_rate/replacement_cost*100,2) AS percentage
FROM film
WHERE rental_rate < replacement_cost*.04
ORDER BY percentage

SELECT  
film_id,
ROUND(rental_rate/replacement_cost*100,2) AS percentage
FROM film
WHERE rental_rate < Round(replacement_cost*0.04,2)
ORDER BY percentage
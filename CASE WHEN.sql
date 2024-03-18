SELECT 
total_amount,
TO_CHAR(book_date,'Dy'),
CASE
	WHEN TO_CHAR(book_date,'Dy')='Mon' THEN 'Monday special'
	WHEN total_amount < 30000 THEN 'Special deal'
	ELSE 'no special at all'
END
FROM bookings


SELECT 
COUNT(*) AS flights,
CASE
	WHEN actual_departure-scheduled_departure IS NULL THEN 'no departure time'
	WHEN actual_departure-scheduled_departure < '00:05' THEN 'On time'
	WHEN actual_departure-scheduled_departure < '01:00' THEN 'A little bit late'
	ELSE 'Very late'
END AS is_late
FROM flights
GROUP BY is_late

SELECT 
order_id,
product_id,
quantity,
unit_price,
CASE 
    WHEN quantity > 1 THEN quantity*unit_price*0.9 + shipping_fee
    ELSE quantity*unit_price + shipping_fee
END AS total_price
FROM sales_orders
GROUP BY order_id,product_id


SELECT 

CASE 
    WHEN total_amount < 20000 THEN 'low price ticket'
    WHEN total_amount BETWEEN 20000 AND 150000 THEN 'middle price ticket'
    WHEN total_amount >= 150000 THEN 'high price ticket'
END AS ticket_price
FROM bookings


SELECT 
COUNT(*),
CASE 
    WHEN total_amount < 20000 THEN 'low price ticket'
    WHEN total_amount BETWEEN 20000 AND 150000 THEN 'middle price ticket'
    WHEN total_amount >= 150000 THEN 'high price ticket'
END AS ticket_price
FROM bookings
GROUP BY ticket_price
ORDER BY 1 DESC

SELECT ticket_price, count(1)
FROM(SELECT
book_ref,
CASE
WHEN total_amount < 20000 THEN 'low price ticket'
WHEN total_amount < 150000 THEN 'mid price ticket'
ELSE 'high price ticket'
END as ticket_price
FROM bookings
) a
GROUP BY ticket_price;

SELECT 
COUNT(*),
CASE
	WHEN EXTRACT(month FROM scheduled_departure) IN (12,1,2) THEN 'WINTER' 
	WHEN EXTRACT(month FROM scheduled_departure) IN (3,4,5) THEN 'SPRING' 
	WHEN EXTRACT(month FROM scheduled_departure) IN (6,7,8) THEN 'SUMMER' 
	WHEN EXTRACT(month FROM scheduled_departure) IN (9,10,11) THEN 'FALL'
END AS season
FROM FLIGHTS
GROUP BY season

SELECT 
COUNT(*) as flights,
CASE
WHEN EXTRACT(month from scheduled_departure) IN (12,1,2) THEN 'Winter'
WHEN EXTRACT (month from scheduled_departure) <= 5 THEN 'Spring'
WHEN EXTRACT (month from scheduled_departure) <= 8 THEN 'Summer'
ELSE 'Fall' 
END as season
FROM flights
GROUP BY season


SELECT 
title,
CASE 
	WHEN (rating = 'PG' OR rating = 'PG-13') AND length > 210 THEN 'Great rating or long (tier 1)'
	WHEN description LIKE '%Drama%' AND length > 90 THEN 'Long drama (tier 2)'
	WHEN description LIKE '%Drama%' AND length < 90 THEN 'Short drama (tier 2)'
	WHEN rental_rate < 1 THEN 'Very cheap (tier 1)'
	ELSE 'Tier(5)'
END AS tier
FROM film
ORDER BY title



SELECT
title,
CASE
	WHEN rating IN ('PG','PG-13') OR length > 210 THEN 'Great rating or long (tier 1)'
	WHEN description LIKE '%Drama%' AND length > 90 THEN 'Long drama (tier 2)'
	WHEN description LIKE '%Drama%' THEN 'Short drama (tier 3)'
	WHEN rental_rate < 1 THEN 'Very cheap (tier 4)'
END as tier_list
FROM film
WHERE 
CASE
	WHEN rating IN ('PG','PG-13') OR length > 210 THEN 'Great rating or long (tier 1)'
	WHEN description LIKE '%Drama%' AND length > 90 THEN 'Long drama (tier 2)'
	WHEN description LIKE '%Drama%' THEN 'Short drama (tier 3)'
	WHEN rental_rate < 1 THEN 'Very cheap (tier 4)'
END is not null
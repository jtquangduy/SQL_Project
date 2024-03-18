SELECT 
COALESCE(CAST(actual_arrival-scheduled_arrival AS VARCHAR),'Not arrived')
FROM flights 


SELECT 
LENGTH(COALESCE(CAST(actual_arrival AS VARCHAR),'TEST'))
FROM flights 

SELECT 
CAST(ticket_no AS BIGINT)
FROM tickets

SELECT 
rental_date,
COALESCE(CAST(return_date AS VARCHAR),'not returned')
FROM rental
ORDER BY rental_date DESC
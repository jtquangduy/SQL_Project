SELECT payment_id,
pa.customer_id,
amount,
first_name, 
last_name
FROM payment pa
INNER JOIN customer cu
ON pa.customer_id = cu.customer_id

SELECT pa.*, first_name, last_name,email
FROM payment pa
INNER JOIN staff sf
ON pa.staff_id = sf.staff_id
WHERE sf.staff_id = 1

SELECT 
s.fare_conditions,
COUNT(*)
FROM seats s
INNER JOIN boarding_passes bd
ON s.seat_no = bd.seat_no
GROUP BY s.fare_conditions


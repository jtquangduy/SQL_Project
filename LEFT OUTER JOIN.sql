SELECT *
FROM aircrafts_data ad
LEFT JOIN flights f
ON ad.aircraft_code = f.aircraft_code
WHERE f.flight_id IS null

SELECT 
s.seat_no,
COUNT(*) 
FROM seats s
LEFT JOIN boarding_passes bp
ON s.seat_no = bp.seat_no
GROUP BY s.seat_no
ORDER BY 2 DESC

SELECT 
RIGHT(s.seat_no,1),
COUNT(*) 
FROM seats s
LEFT JOIN boarding_passes bp
ON s.seat_no = bp.seat_no
GROUP BY RIGHT(s.seat_no,1)
ORDER BY 2 DESC

SELECT 
fare_conditions,
COUNT(*) 
FROM seats s
LEFT JOIN boarding_passes bp
ON s.seat_no = bp.seat_no
GROUP BY fare_conditions
ORDER BY 2 DESC

SELECT 
c.first_name,
c.last_name,
a.phone,
a.district
FROM customer c
LEFT  JOIN address a
ON c.address_id = a.address_id
WHERE a.district = 'Texas'

SELECT 
a.address_id,
a.address,
c.address_id
FROM address a
LEFT JOIN customer c
ON c.address_id = a.address_id
WHERE c.address_id IS NULL
ORDER BY a.address_id

SELECT 
a.address_id,
a.address
FROM address a
LEFT JOIN customer c
ON c.address_id = a.address_id
WHERE c.address_id IS NULL
ORDER BY a.address_id


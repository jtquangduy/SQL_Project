SELECT 
seat_no,
ROUND(AVG(amount),2)
FROM boarding_passes bp
LEFT JOIN ticket_flights tf
ON bp.ticket_no = tf.ticket_no
AND bp.flight_id = tf.flight_id
GROUP BY seat_no
ORDER BY 2 DESC
SELECT 
COALESCE(actual_arrival-scheduled_arrival,'0:00')
FROM flights


SELECT 
transaction_id,
account_id,
transaction_type,
amount,
COALESCE(description,'Not Provided') AS description
FROM transactions
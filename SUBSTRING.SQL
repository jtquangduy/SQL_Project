
SELECT 
email,
SUBSTRING (email FROM POSITION('.' IN email) + 1 FOR LENGTH(last_name))
FROM customer

SELECT 
email,
SUBSTRING (email FROM POSITION('.' IN email) + 1 FOR POSITION('@' in email)-POSITION('.' IN EMAIL) - 1)
FROM customer

SELECT 
email,
LEFT(EMAIL,1) || 
'***' || 
LEFT(SUBSTRING(email FROM POSITION('.' IN email) FOR POSITION('@' IN email)-POSITION('.' IN email)),2) || 
'***' ||
SUBSTRING(email FROM POSITION('@' IN email))
FROM customer

SELECT 
email,
LEFT(EMAIL,1) || 
'***' || 
SUBSTRING(email FROM POSITION('.' IN email) FOR 2) || 
'***' ||
SUBSTRING(email FROM POSITION('@' IN email))
FROM customer

SELECT 
email,
'***' || 
RIGHT(SUBSTRING(email FROM 0 FOR POSITION('.' IN email)),1) || 
LEFT(SUBSTRING(email FROM POSITION('.' IN email) FOR POSITION('@' IN email)-POSITION('.' IN email)),2) || 
'***' ||
SUBSTRING(email FROM POSITION('@' IN email))
FROM customer

SELECT 
email,
'***' ||
SUBSTRING(email FROM POSITION('.' IN email)-1 FOR 3) 
|| '***' ||
SUBSTRING(email FROM POSITION('@' IN email))
FROM customer
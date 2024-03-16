SELECT 
SUM (amount), 
ROUND(AVG(amount),2) AS AVERAGE
FROM payment


SELECT 
COUNT(OrderID) AS TotalOrders,
AVG(Amount) AS AverageOrderAmount
FROM Orders
WHERE OrderDate BETWEEN ('2023-08-01') AND ('2023-09-01')

SELECT 
MIN(replacement_cost),
MAX(replacement_cost),
ROUND(AVG(replacement_cost),2) AS AVERAGE,
SUM(replacement_cost)
FROM film
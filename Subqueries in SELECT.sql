SELECT *,(SELECT AVG(amount) FROM payment)
FROM payment


SELECT *,(SELECT MAX(amount) FROM payment) - amount AS diffences
FROM payment
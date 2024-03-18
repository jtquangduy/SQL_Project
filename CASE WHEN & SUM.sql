SELECT 
SUM(
	CASE 
		WHEN rating IN ('PG','G') THEN 1
		ELSE 0
	END
) AS no_of_ratings_with_g_or_pg
FROM film

SELECT
SUM(CASE WHEN rating = 'G' THEN 1 ELSE 0 END) AS "G",
SUM(CASE WHEN rating = 'R' THEN 1 ELSE 0 END) AS "R",
SUM(CASE WHEN rating = 'NC-17' THEN 1 ELSE 0 END) AS "NC-17",
SUM(CASE WHEN rating = 'PG-13' THEN 1 ELSE 0 END) AS "PG-13",
SUM(CASE WHEN rating = 'PG' THEN 1 ELSE 0 END) AS "PG"
FROM film

SELECT
TotalIncome-TotalExpenses AS "TotalIncome"
FROM(SELECT 
SUM(CASE WHEN category = "Income" THEN amount ELSE 0 END) AS "TotalIncome", 
SUM(CASE WHEN category = "Expense" THEN amount ELSE 0 END) AS "TotalExpenses"
FROM transactions)

SELECT
TotalIncome,
TotalExpenses,
TotalIncome - TotalExpenses AS "NetIncome"
FROM(
    SELECT 
        SUM(CASE WHEN category = "Income" THEN amount ELSE 0 END) AS "TotalIncome", 
        SUM(CASE WHEN category = "Expense" THEN amount ELSE 0 END) AS "TotalExpenses"
    FROM transactions
)

SELECT 
    SUM(CASE WHEN category = "Income" THEN amount ELSE 0 END) AS "TotalIncome", 
    SUM(CASE WHEN category = "Expense" THEN amount ELSE 0 END) AS "TotalExpenses",
    SUM(CASE WHEN category = "Income" THEN amount ELSE -amount END) AS "NetIncome"
FROM transactions
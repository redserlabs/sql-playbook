-- Title: Pharmacy Analytics (Part 1)
-- Source: DataLemur (Interview - Easy, CVS Health)
-- Link: (paste the DataLemur URL)
-- Concepts: arithmetic, ORDER BY, LIMIT

/*
Goal:
- Top 3 most profitable drugs
- total_profit = total_sales - cogs
*/

-- Solution (my submission):

SELECT drug, total_sales - cogs as total_profit
FROM pharmacy_sales
ORDER BY total_profit DESC
LIMIT 3;
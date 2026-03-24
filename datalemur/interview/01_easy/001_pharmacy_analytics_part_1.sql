-- Title: Pharmacy Analytics (Part 1)
-- Source: DataLemur (Interview - Easy, CVS Health)
-- Link: https://datalemur.com/questions/top-profitable-drugs
-- Concepts: arithmetic, ORDER BY, LIMIT

/*
Approach:
- total_profit = total_sales - cogs
- Order by total_profit desc and keep top 3
*/

SELECT
  drug,
  total_sales - cogs AS total_profit
FROM pharmacy_sales
ORDER BY total_profit DESC
LIMIT 3;
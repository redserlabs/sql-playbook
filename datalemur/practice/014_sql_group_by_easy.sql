-- Title: Easy SQL GROUP BY Practice Exercise
-- Source: DataLemur (Practice)
-- Link: https://datalemur.com/questions/sql-group-by-practice-exercise-easy
-- Concepts: GROUP BY, MIN, ORDER BY

/*
Approach:
- Group by ticker
- Compute MIN(open) per ticker
- Order by the minimum (descending)
*/

SELECT
  MIN(open) AS min,
  ticker
FROM stock_prices
GROUP BY ticker
ORDER BY min DESC;
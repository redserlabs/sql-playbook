-- Title: SQL Math Practice Exercise: Big-Mover Months
-- Source: DataLemur (Practice)
-- Link: https://datalemur.com/questions/sql-math-practice-exercise-big-mover-months
-- Concepts: arithmetic, WHERE, OR, GROUP BY, COUNT, ORDER BY

/*
Approach:
- Big-mover month if stock closes up/down by > 10% vs open
- Count big-mover months per ticker
- Order by count desc
*/

SELECT
  ticker,
  COUNT(ticker)
FROM stock_prices
WHERE (close - open) / open > 0.10
   OR (close - open) / open < -0.10
GROUP BY ticker
ORDER BY count DESC;

/*
V2 (optional, more compact):
- Use ABS((close-open)/open) > 0.10
- Alias COUNT(*) AS big_mover_months
*/
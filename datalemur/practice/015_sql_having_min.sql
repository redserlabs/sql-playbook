-- Title: SQL HAVING MIN Practice Exercise
-- Source: DataLemur (Practice)
-- Link: https://datalemur.com/questions/sql-having-min-practice-exercise
-- Concepts: GROUP BY, HAVING, MIN

/*
Approach:
- Group by ticker
- Keep only tickers whose MIN(open) is >= 100
*/

SELECT
  ticker,
  MIN(open) AS min_open
FROM stock_prices
GROUP BY ticker
HAVING MIN(open) >= 100;
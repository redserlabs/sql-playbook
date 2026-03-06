-- Title: SQL MIN Practice Exercise (Microsoft Stock)
-- Source: DataLemur (Practice)
-- Link: https://datalemur.com/questions/sql-min-practice-exercise
-- Concepts: MIN, WHERE

/*
Approach:
- Filter ticker = 'MSFT'
- Find minimum open price
*/

SELECT MIN(open) AS min_open
FROM stock_prices
WHERE ticker = 'MSFT';
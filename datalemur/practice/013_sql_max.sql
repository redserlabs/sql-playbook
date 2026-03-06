-- Title: SQL MAX Practice Exercise (Netflix Stock)
-- Source: DataLemur (Practice)
-- Link: https://datalemur.com/questions/sql-max-practice-exercise
-- Concepts: MAX, WHERE

/*
Approach:
- Filter ticker = 'NFLX'
- Find maximum open price
*/

SELECT MAX(open) AS max_open
FROM stock_prices
WHERE ticker = 'NFLX';
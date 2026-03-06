-- Title: SQL AVG Practice Exercise
-- Source: DataLemur (Practice)
-- Link: https://datalemur.com/questions/sql-avg-practice-exercise
-- Concepts: AVG, WHERE

/*
Approach:
- Filter ticker = 'GOOG'
- Compute average of the open price
*/

SELECT AVG(open) AS avg_open
FROM stock_prices
WHERE ticker = 'GOOG';
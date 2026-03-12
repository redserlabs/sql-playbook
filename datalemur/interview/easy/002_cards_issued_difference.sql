-- Title: Cards Issued Difference
-- Source: DataLemur (Interview - Easy, JPMorgan)
-- Link: https://datalemur.com/questions/cards-issued-difference
-- Concepts: GROUP BY, MAX, MIN, arithmetic, ORDER BY

/*
Approach:
- difference = MAX(issued_amount) - MIN(issued_amount)
- Group by card_name, order by difference desc
*/

SELECT
  card_name,
  MAX(issued_amount) - MIN(issued_amount) AS difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY difference DESC;
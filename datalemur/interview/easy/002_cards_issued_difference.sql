-- Title: Cards Issued Difference
-- Source: DataLemur (Interview - Easy, JPMorgan)
-- Link: (paste the DataLemur URL)
-- Concepts: GROUP BY, MAX, MIN, arithmetic, ORDER BY

/*
Goal:
- difference = MAX(issued_amount) - MIN(issued_amount)
- Group by card_name
- Order by difference desc
*/

-- Solution (my submission):

SELECT
  card_name,
  MAX(issued_amount) - MIN(issued_amount) as difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY difference DESC;
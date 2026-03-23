-- Title: Cities With Completed Trades
-- Source: DataLemur (Interview - Easy, Robinhood)
-- Link: https://datalemur.com/questions/completed-trades
-- Concepts: JOIN, GROUP BY, COUNT, ORDER BY, LIMIT

/*
Approach:
- Join trades to users
- Filter Completed trades
- Count orders per city, keep top 3
*/

-- My submission:
SELECT
  users.city,
  COUNT(trades.order_id) AS total_orders
FROM trades
INNER JOIN users
  ON trades.user_id = users.user_id
WHERE trades.status = 'Completed'
GROUP BY users.city
ORDER BY total_orders DESC
LIMIT 3;
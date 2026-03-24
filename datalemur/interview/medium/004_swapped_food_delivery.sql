-- Source: DataLemur (Interview)
-- Difficulty: Medium
-- Title: Swapped Food Delivery (Zomato)
-- Link: https://datalemur.com/questions/sql-swapped-food-delivery
-- Concepts: CTE, CASE, modulo, CROSS JOIN, ORDER BY

WITH order_counts AS (
  SELECT COUNT(order_id) AS total_orders
  FROM orders
)
SELECT
  CASE
    WHEN order_id % 2 <> 0 AND order_id <> total_orders THEN order_id + 1
    WHEN order_id % 2 <> 0 AND order_id = total_orders THEN order_id
    ELSE order_id - 1
  END AS order_id,
  item
FROM orders
CROSS JOIN order_counts
ORDER BY order_id;
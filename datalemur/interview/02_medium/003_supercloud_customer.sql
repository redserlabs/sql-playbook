-- Source: DataLemur (Interview)
-- Difficulty: Medium
-- Title: Supercloud Customer (Microsoft)
-- Link: https://datalemur.com/questions/supercloud-customer
-- Concepts: CTE, JOIN, GROUP BY, COUNT DISTINCT, subquery

WITH supercloud_cust AS (
  SELECT
    cc.customer_id,
    COUNT(DISTINCT p.product_category) AS product_count
  FROM customer_contracts AS cc
  INNER JOIN products AS p
    ON cc.product_id = p.product_id
  GROUP BY cc.customer_id
)
SELECT customer_id
FROM supercloud_cust
WHERE product_count = (
  SELECT COUNT(DISTINCT product_category)
  FROM products
);
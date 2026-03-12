-- Title: SQL COUNT DISTINCT Practice Exercise
-- Source: DataLemur (Practice)
-- Link: https://datalemur.com/questions/sql-count-distinct-practice-exercise
-- Concepts: COUNT(DISTINCT), GROUP BY

/*
Approach:
- Group by category
- Count distinct products in each category
*/

SELECT
  category,
  COUNT(DISTINCT product) AS unique_products
FROM product_spend
GROUP BY category;
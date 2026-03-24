-- Source: DataLemur (Interview)
-- Difficulty: Easy
-- Title: Pharmacy Analytics (Part 3) (CVS Health)
-- Link: https://datalemur.com/questions/total-drugs-sales
-- Concepts: CTE, SUM, GROUP BY, ROUND, string formatting, ORDER BY

WITH drug_sales AS (
  SELECT
    manufacturer,
    SUM(total_sales) AS sales
  FROM pharmacy_sales
  GROUP BY manufacturer
)

SELECT
  manufacturer,
  ('$' || ROUND(sales / 1000000) || ' million') AS sales_mil
FROM drug_sales
ORDER BY sales DESC, manufacturer;
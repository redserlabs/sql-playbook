-- Title: Pharmacy Analytics (Part 2)
-- Source: DataLemur (Interview - Easy, CVS Health)
-- Link: https://datalemur.com/questions/non-profitable-drugs
-- Concepts: WHERE, GROUP BY, SUM, COUNT, ABS, ORDER BY

/*
Approach:
- Keep rows where profit <= 0 (total_sales - cogs <= 0)
- Group by manufacturer
- total_loss = ABS(SUM(total_sales - cogs))
- drug_count = COUNT(drug)
- Order by total_loss desc
*/

SELECT
  manufacturer,
  ABS(SUM(total_sales - cogs)) AS total_loss,
  COUNT(drug) AS drug_count
FROM pharmacy_sales
WHERE total_sales - cogs <= 0
GROUP BY manufacturer
ORDER BY total_loss DESC;